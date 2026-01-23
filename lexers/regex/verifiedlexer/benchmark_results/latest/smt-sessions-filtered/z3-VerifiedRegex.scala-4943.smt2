; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!251892 () Bool)

(assert start!251892)

(declare-fun b!2596234 () Bool)

(assert (=> b!2596234 true))

(declare-fun b!2596228 () Bool)

(declare-fun res!1092689 () Bool)

(declare-fun e!1638430 () Bool)

(assert (=> b!2596228 (=> (not res!1092689) (not e!1638430))))

(declare-datatypes ((B!2193 0))(
  ( (B!2194 (val!9564 Int)) )
))
(declare-datatypes ((List!29997 0))(
  ( (Nil!29897) (Cons!29897 (h!35317 B!2193) (t!213010 List!29997)) )
))
(declare-fun l1!1546 () List!29997)

(get-info :version)

(assert (=> b!2596228 (= res!1092689 ((_ is Cons!29897) l1!1546))))

(declare-fun b!2596230 () Bool)

(declare-fun e!1638432 () Bool)

(declare-fun tp_is_empty!13473 () Bool)

(declare-fun tp!823207 () Bool)

(assert (=> b!2596230 (= e!1638432 (and tp_is_empty!13473 tp!823207))))

(declare-fun b!2596231 () Bool)

(declare-fun e!1638433 () Bool)

(assert (=> b!2596231 (= e!1638430 (not e!1638433))))

(declare-fun res!1092688 () Bool)

(assert (=> b!2596231 (=> res!1092688 e!1638433)))

(declare-fun lt!914224 () List!29997)

(declare-fun lambda!96942 () Int)

(declare-fun forall!6134 (List!29997 Int) Bool)

(assert (=> b!2596231 (= res!1092688 (not (forall!6134 lt!914224 lambda!96942)))))

(declare-fun lt!914221 () Int)

(declare-fun size!23202 (List!29997) Int)

(assert (=> b!2596231 (= (size!23202 lt!914224) (- lt!914221 1))))

(declare-datatypes ((Unit!43951 0))(
  ( (Unit!43952) )
))
(declare-fun lt!914222 () Unit!43951)

(declare-fun l2!1515 () List!29997)

(declare-fun lemmaRemoveElmtNoDuplicateRemoveOne!30 (List!29997 B!2193) Unit!43951)

(assert (=> b!2596231 (= lt!914222 (lemmaRemoveElmtNoDuplicateRemoveOne!30 l2!1515 (h!35317 l1!1546)))))

(assert (=> b!2596231 (forall!6134 lt!914224 lambda!96942)))

(declare-fun lt!914225 () Unit!43951)

(declare-fun lemmaRemoveElmtMaintainsForall!32 (List!29997 B!2193 Int) Unit!43951)

(assert (=> b!2596231 (= lt!914225 (lemmaRemoveElmtMaintainsForall!32 l2!1515 (h!35317 l1!1546) lambda!96942))))

(declare-fun noDuplicate!445 (List!29997) Bool)

(assert (=> b!2596231 (noDuplicate!445 lt!914224)))

(declare-fun -!172 (List!29997 B!2193) List!29997)

(assert (=> b!2596231 (= lt!914224 (-!172 l2!1515 (h!35317 l1!1546)))))

(declare-fun lt!914223 () Unit!43951)

(declare-fun lemmaRemoveElmtMaintainsNoDuplicate!38 (List!29997 B!2193) Unit!43951)

(assert (=> b!2596231 (= lt!914223 (lemmaRemoveElmtMaintainsNoDuplicate!38 l2!1515 (h!35317 l1!1546)))))

(declare-fun b!2596232 () Bool)

(assert (=> b!2596232 (= e!1638433 (forall!6134 lt!914224 lambda!96942))))

(declare-fun b!2596233 () Bool)

(declare-fun res!1092691 () Bool)

(assert (=> b!2596233 (=> (not res!1092691) (not e!1638430))))

(declare-fun contains!5445 (List!29997 B!2193) Bool)

(assert (=> b!2596233 (= res!1092691 (contains!5445 l2!1515 (h!35317 l1!1546)))))

(declare-fun res!1092692 () Bool)

(assert (=> b!2596234 (=> (not res!1092692) (not e!1638430))))

(assert (=> b!2596234 (= res!1092692 (forall!6134 l2!1515 lambda!96942))))

(declare-fun b!2596235 () Bool)

(declare-fun e!1638431 () Bool)

(declare-fun tp!823208 () Bool)

(assert (=> b!2596235 (= e!1638431 (and tp_is_empty!13473 tp!823208))))

(declare-fun res!1092690 () Bool)

(declare-fun e!1638429 () Bool)

(assert (=> start!251892 (=> (not res!1092690) (not e!1638429))))

(assert (=> start!251892 (= res!1092690 (noDuplicate!445 l1!1546))))

(assert (=> start!251892 e!1638429))

(assert (=> start!251892 e!1638432))

(assert (=> start!251892 e!1638431))

(declare-fun b!2596229 () Bool)

(declare-fun res!1092693 () Bool)

(assert (=> b!2596229 (=> (not res!1092693) (not e!1638429))))

(assert (=> b!2596229 (= res!1092693 (noDuplicate!445 l2!1515))))

(declare-fun b!2596236 () Bool)

(assert (=> b!2596236 (= e!1638429 e!1638430)))

(declare-fun res!1092686 () Bool)

(assert (=> b!2596236 (=> (not res!1092686) (not e!1638430))))

(declare-fun lt!914220 () Int)

(assert (=> b!2596236 (= res!1092686 (> lt!914220 lt!914221))))

(assert (=> b!2596236 (= lt!914221 (size!23202 l2!1515))))

(assert (=> b!2596236 (= lt!914220 (size!23202 l1!1546))))

(declare-fun b!2596237 () Bool)

(declare-fun res!1092687 () Bool)

(assert (=> b!2596237 (=> res!1092687 e!1638433)))

(declare-fun isEmpty!17135 (List!29997) Bool)

(assert (=> b!2596237 (= res!1092687 (isEmpty!17135 l1!1546))))

(assert (= (and start!251892 res!1092690) b!2596229))

(assert (= (and b!2596229 res!1092693) b!2596236))

(assert (= (and b!2596236 res!1092686) b!2596234))

(assert (= (and b!2596234 res!1092692) b!2596228))

(assert (= (and b!2596228 res!1092689) b!2596233))

(assert (= (and b!2596233 res!1092691) b!2596231))

(assert (= (and b!2596231 (not res!1092688)) b!2596237))

(assert (= (and b!2596237 (not res!1092687)) b!2596232))

(assert (= (and start!251892 ((_ is Cons!29897) l1!1546)) b!2596230))

(assert (= (and start!251892 ((_ is Cons!29897) l2!1515)) b!2596235))

(declare-fun m!2932521 () Bool)

(assert (=> b!2596233 m!2932521))

(declare-fun m!2932523 () Bool)

(assert (=> b!2596236 m!2932523))

(declare-fun m!2932525 () Bool)

(assert (=> b!2596236 m!2932525))

(declare-fun m!2932527 () Bool)

(assert (=> b!2596231 m!2932527))

(declare-fun m!2932529 () Bool)

(assert (=> b!2596231 m!2932529))

(declare-fun m!2932531 () Bool)

(assert (=> b!2596231 m!2932531))

(declare-fun m!2932533 () Bool)

(assert (=> b!2596231 m!2932533))

(assert (=> b!2596231 m!2932529))

(declare-fun m!2932535 () Bool)

(assert (=> b!2596231 m!2932535))

(declare-fun m!2932537 () Bool)

(assert (=> b!2596231 m!2932537))

(declare-fun m!2932539 () Bool)

(assert (=> b!2596231 m!2932539))

(declare-fun m!2932541 () Bool)

(assert (=> b!2596229 m!2932541))

(declare-fun m!2932543 () Bool)

(assert (=> start!251892 m!2932543))

(declare-fun m!2932545 () Bool)

(assert (=> b!2596234 m!2932545))

(assert (=> b!2596232 m!2932529))

(declare-fun m!2932547 () Bool)

(assert (=> b!2596237 m!2932547))

(check-sat (not b!2596231) (not b!2596229) (not b!2596235) (not b!2596232) (not b!2596230) (not b!2596234) (not b!2596236) (not start!251892) (not b!2596233) tp_is_empty!13473 (not b!2596237))
(check-sat)
