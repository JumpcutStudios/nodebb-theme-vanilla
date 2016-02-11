<div class="account">
	<!-- IMPORT partials/account_menu.tpl -->

	<div class="row">
		<div class="col-md-2 col-sm-4">
			<div class="account-picture-block text-center">
				<div class="user-icon user-profile-picture" style="background-color: {icon:bgColor};">{icon:text}</div>

			</div>
		</div>

		<div class="col-md-5 col-sm-4">
			<div>
				<form class='form-horizontal'>

					<div class="control-group">
						<label class="control-label" for="inputAboutMe">[[user:aboutme]]</label> <small><label id="aboutMeCharCountLeft"></label></small>
						<div class="controls">
							<textarea class="form-control" id="inputAboutMe" rows="5">{aboutme}</textarea>
						</div>
					</div>
					<!-- IF !disableSignatures -->
					<div class="control-group">
						<label class="control-label" for="inputSignature">[[user:signature]]</label> <small><label id="signatureCharCountLeft"></label></small>
						<div class="controls">
							<textarea class="form-control" id="inputSignature" rows="5">{signature}</textarea>
						</div>
					</div>
					<!-- ENDIF !disableSignatures -->

					<input type="hidden" id="inputUID" value="{uid}"><br />

					<div class="form-actions">
						<a id="submitBtn" href="#" class="btn btn-primary">[[global:save_changes]]</a>
					</div>

				</form>
			</div>

			<hr class="visible-xs visible-sm"/>
		</div>

		<div class="col-md-5 col-sm-4">
			<!-- IF sso.length -->
			<label class="control-label">[[user:sso.title]]</label>
			<div class="list-group">
				<!-- BEGIN sso -->
				<a class="list-group-item" href="{../url}" target="<!-- IF ../associated -->_blank<!-- ELSE -->_top<!-- ENDIF ../associated -->">
					<!-- IF ../icon --><i class="fa {../icon}"></i><!-- ENDIF ../icon -->
					<!-- IF ../associated -->[[user:sso.associated]]<!-- ELSE -->[[user:sso.not-associated]]<!-- ENDIF ../associated -->
					{../name}
				</a>
				<!-- END sso -->
			</div>
			<!-- ENDIF sso.length -->
		</div>
	</div>
</div>

