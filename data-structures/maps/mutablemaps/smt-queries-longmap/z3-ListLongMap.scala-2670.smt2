; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39848 () Bool)

(assert start!39848)

(declare-fun b_free!10107 () Bool)

(declare-fun b_next!10107 () Bool)

(assert (=> start!39848 (= b_free!10107 (not b_next!10107))))

(declare-fun tp!35849 () Bool)

(declare-fun b_and!17891 () Bool)

(assert (=> start!39848 (= tp!35849 b_and!17891)))

(declare-fun b!430323 () Bool)

(declare-datatypes ((Unit!12630 0))(
  ( (Unit!12631) )
))
(declare-fun e!254759 () Unit!12630)

(declare-fun Unit!12632 () Unit!12630)

(assert (=> b!430323 (= e!254759 Unit!12632)))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun lt!196879 () Unit!12630)

(declare-datatypes ((array!26331 0))(
  ( (array!26332 (arr!12612 (Array (_ BitVec 32) (_ BitVec 64))) (size!12964 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26331)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26331 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12630)

(assert (=> b!430323 (= lt!196879 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k0!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!430323 false))

(declare-fun b!430324 () Bool)

(declare-fun res!252937 () Bool)

(declare-fun e!254760 () Bool)

(assert (=> b!430324 (=> (not res!252937) (not e!254760))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!430324 (= res!252937 (or (= (select (arr!12612 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12612 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!430325 () Bool)

(declare-fun e!254762 () Bool)

(declare-fun tp_is_empty!11259 () Bool)

(assert (=> b!430325 (= e!254762 tp_is_empty!11259)))

(declare-fun b!430326 () Bool)

(declare-fun res!252942 () Bool)

(assert (=> b!430326 (=> (not res!252942) (not e!254760))))

(declare-datatypes ((V!16117 0))(
  ( (V!16118 (val!5674 Int)) )
))
(declare-datatypes ((ValueCell!5286 0))(
  ( (ValueCellFull!5286 (v!7917 V!16117)) (EmptyCell!5286) )
))
(declare-datatypes ((array!26333 0))(
  ( (array!26334 (arr!12613 (Array (_ BitVec 32) ValueCell!5286)) (size!12965 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26333)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!430326 (= res!252942 (and (= (size!12965 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12964 _keys!709) (size!12965 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!430327 () Bool)

(declare-fun e!254758 () Bool)

(declare-fun e!254757 () Bool)

(declare-fun mapRes!18510 () Bool)

(assert (=> b!430327 (= e!254758 (and e!254757 mapRes!18510))))

(declare-fun condMapEmpty!18510 () Bool)

(declare-fun mapDefault!18510 () ValueCell!5286)

(assert (=> b!430327 (= condMapEmpty!18510 (= (arr!12613 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5286)) mapDefault!18510)))))

(declare-fun b!430328 () Bool)

(declare-fun Unit!12633 () Unit!12630)

(assert (=> b!430328 (= e!254759 Unit!12633)))

(declare-fun b!430329 () Bool)

(declare-fun e!254756 () Bool)

(declare-fun e!254764 () Bool)

(assert (=> b!430329 (= e!254756 (not e!254764))))

(declare-fun res!252933 () Bool)

(assert (=> b!430329 (=> res!252933 e!254764)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!430329 (= res!252933 (not (validKeyInArray!0 (select (arr!12612 _keys!709) from!863))))))

(declare-datatypes ((tuple2!7408 0))(
  ( (tuple2!7409 (_1!3714 (_ BitVec 64)) (_2!3714 V!16117)) )
))
(declare-datatypes ((List!7461 0))(
  ( (Nil!7458) (Cons!7457 (h!8313 tuple2!7408) (t!13025 List!7461)) )
))
(declare-datatypes ((ListLongMap!6335 0))(
  ( (ListLongMap!6336 (toList!3183 List!7461)) )
))
(declare-fun lt!196876 () ListLongMap!6335)

(declare-fun lt!196875 () ListLongMap!6335)

(assert (=> b!430329 (= lt!196876 lt!196875)))

(declare-fun lt!196881 () ListLongMap!6335)

(declare-fun lt!196885 () tuple2!7408)

(declare-fun +!1331 (ListLongMap!6335 tuple2!7408) ListLongMap!6335)

(assert (=> b!430329 (= lt!196875 (+!1331 lt!196881 lt!196885))))

(declare-fun minValue!515 () V!16117)

(declare-fun defaultEntry!557 () Int)

(declare-fun lt!196884 () array!26333)

(declare-fun zeroValue!515 () V!16117)

(declare-fun lt!196880 () array!26331)

(declare-fun getCurrentListMapNoExtraKeys!1379 (array!26331 array!26333 (_ BitVec 32) (_ BitVec 32) V!16117 V!16117 (_ BitVec 32) Int) ListLongMap!6335)

(assert (=> b!430329 (= lt!196876 (getCurrentListMapNoExtraKeys!1379 lt!196880 lt!196884 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun v!412 () V!16117)

(assert (=> b!430329 (= lt!196885 (tuple2!7409 k0!794 v!412))))

(assert (=> b!430329 (= lt!196881 (getCurrentListMapNoExtraKeys!1379 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!196883 () Unit!12630)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!526 (array!26331 array!26333 (_ BitVec 32) (_ BitVec 32) V!16117 V!16117 (_ BitVec 32) (_ BitVec 64) V!16117 (_ BitVec 32) Int) Unit!12630)

(assert (=> b!430329 (= lt!196883 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!526 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!430330 () Bool)

(declare-fun e!254755 () Bool)

(assert (=> b!430330 (= e!254755 e!254756)))

(declare-fun res!252943 () Bool)

(assert (=> b!430330 (=> (not res!252943) (not e!254756))))

(assert (=> b!430330 (= res!252943 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!196878 () ListLongMap!6335)

(assert (=> b!430330 (= lt!196878 (getCurrentListMapNoExtraKeys!1379 lt!196880 lt!196884 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!430330 (= lt!196884 (array!26334 (store (arr!12613 _values!549) i!563 (ValueCellFull!5286 v!412)) (size!12965 _values!549)))))

(declare-fun lt!196887 () ListLongMap!6335)

(assert (=> b!430330 (= lt!196887 (getCurrentListMapNoExtraKeys!1379 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!430331 () Bool)

(declare-fun e!254761 () Bool)

(assert (=> b!430331 (= e!254761 true)))

(declare-fun lt!196873 () ListLongMap!6335)

(declare-fun lt!196877 () tuple2!7408)

(assert (=> b!430331 (= lt!196873 (+!1331 (+!1331 lt!196881 lt!196877) lt!196885))))

(declare-fun lt!196886 () V!16117)

(declare-fun lt!196874 () Unit!12630)

(declare-fun addCommutativeForDiffKeys!350 (ListLongMap!6335 (_ BitVec 64) V!16117 (_ BitVec 64) V!16117) Unit!12630)

(assert (=> b!430331 (= lt!196874 (addCommutativeForDiffKeys!350 lt!196881 k0!794 v!412 (select (arr!12612 _keys!709) from!863) lt!196886))))

(declare-fun b!430332 () Bool)

(declare-fun res!252939 () Bool)

(assert (=> b!430332 (=> (not res!252939) (not e!254755))))

(declare-datatypes ((List!7462 0))(
  ( (Nil!7459) (Cons!7458 (h!8314 (_ BitVec 64)) (t!13026 List!7462)) )
))
(declare-fun arrayNoDuplicates!0 (array!26331 (_ BitVec 32) List!7462) Bool)

(assert (=> b!430332 (= res!252939 (arrayNoDuplicates!0 lt!196880 #b00000000000000000000000000000000 Nil!7459))))

(declare-fun b!430333 () Bool)

(declare-fun res!252944 () Bool)

(assert (=> b!430333 (=> (not res!252944) (not e!254760))))

(assert (=> b!430333 (= res!252944 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7459))))

(declare-fun b!430334 () Bool)

(declare-fun res!252935 () Bool)

(assert (=> b!430334 (=> (not res!252935) (not e!254760))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26331 (_ BitVec 32)) Bool)

(assert (=> b!430334 (= res!252935 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!430335 () Bool)

(declare-fun res!252936 () Bool)

(assert (=> b!430335 (=> (not res!252936) (not e!254755))))

(assert (=> b!430335 (= res!252936 (bvsle from!863 i!563))))

(declare-fun b!430336 () Bool)

(declare-fun res!252941 () Bool)

(assert (=> b!430336 (=> (not res!252941) (not e!254760))))

(assert (=> b!430336 (= res!252941 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12964 _keys!709))))))

(declare-fun b!430337 () Bool)

(assert (=> b!430337 (= e!254757 tp_is_empty!11259)))

(declare-fun mapIsEmpty!18510 () Bool)

(assert (=> mapIsEmpty!18510 mapRes!18510))

(declare-fun b!430338 () Bool)

(declare-fun res!252945 () Bool)

(assert (=> b!430338 (=> (not res!252945) (not e!254760))))

(assert (=> b!430338 (= res!252945 (validKeyInArray!0 k0!794))))

(declare-fun b!430339 () Bool)

(assert (=> b!430339 (= e!254764 e!254761)))

(declare-fun res!252940 () Bool)

(assert (=> b!430339 (=> res!252940 e!254761)))

(assert (=> b!430339 (= res!252940 (= k0!794 (select (arr!12612 _keys!709) from!863)))))

(assert (=> b!430339 (not (= (select (arr!12612 _keys!709) from!863) k0!794))))

(declare-fun lt!196882 () Unit!12630)

(assert (=> b!430339 (= lt!196882 e!254759)))

(declare-fun c!55421 () Bool)

(assert (=> b!430339 (= c!55421 (= (select (arr!12612 _keys!709) from!863) k0!794))))

(assert (=> b!430339 (= lt!196878 lt!196873)))

(assert (=> b!430339 (= lt!196873 (+!1331 lt!196875 lt!196877))))

(assert (=> b!430339 (= lt!196877 (tuple2!7409 (select (arr!12612 _keys!709) from!863) lt!196886))))

(declare-fun get!6265 (ValueCell!5286 V!16117) V!16117)

(declare-fun dynLambda!776 (Int (_ BitVec 64)) V!16117)

(assert (=> b!430339 (= lt!196886 (get!6265 (select (arr!12613 _values!549) from!863) (dynLambda!776 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!430340 () Bool)

(declare-fun res!252931 () Bool)

(assert (=> b!430340 (=> (not res!252931) (not e!254760))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!430340 (= res!252931 (validMask!0 mask!1025))))

(declare-fun b!430341 () Bool)

(assert (=> b!430341 (= e!254760 e!254755)))

(declare-fun res!252938 () Bool)

(assert (=> b!430341 (=> (not res!252938) (not e!254755))))

(assert (=> b!430341 (= res!252938 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!196880 mask!1025))))

(assert (=> b!430341 (= lt!196880 (array!26332 (store (arr!12612 _keys!709) i!563 k0!794) (size!12964 _keys!709)))))

(declare-fun b!430342 () Bool)

(declare-fun res!252932 () Bool)

(assert (=> b!430342 (=> (not res!252932) (not e!254760))))

(declare-fun arrayContainsKey!0 (array!26331 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!430342 (= res!252932 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun res!252934 () Bool)

(assert (=> start!39848 (=> (not res!252934) (not e!254760))))

(assert (=> start!39848 (= res!252934 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12964 _keys!709))))))

(assert (=> start!39848 e!254760))

(assert (=> start!39848 tp_is_empty!11259))

(assert (=> start!39848 tp!35849))

(assert (=> start!39848 true))

(declare-fun array_inv!9174 (array!26333) Bool)

(assert (=> start!39848 (and (array_inv!9174 _values!549) e!254758)))

(declare-fun array_inv!9175 (array!26331) Bool)

(assert (=> start!39848 (array_inv!9175 _keys!709)))

(declare-fun mapNonEmpty!18510 () Bool)

(declare-fun tp!35850 () Bool)

(assert (=> mapNonEmpty!18510 (= mapRes!18510 (and tp!35850 e!254762))))

(declare-fun mapKey!18510 () (_ BitVec 32))

(declare-fun mapRest!18510 () (Array (_ BitVec 32) ValueCell!5286))

(declare-fun mapValue!18510 () ValueCell!5286)

(assert (=> mapNonEmpty!18510 (= (arr!12613 _values!549) (store mapRest!18510 mapKey!18510 mapValue!18510))))

(assert (= (and start!39848 res!252934) b!430340))

(assert (= (and b!430340 res!252931) b!430326))

(assert (= (and b!430326 res!252942) b!430334))

(assert (= (and b!430334 res!252935) b!430333))

(assert (= (and b!430333 res!252944) b!430336))

(assert (= (and b!430336 res!252941) b!430338))

(assert (= (and b!430338 res!252945) b!430324))

(assert (= (and b!430324 res!252937) b!430342))

(assert (= (and b!430342 res!252932) b!430341))

(assert (= (and b!430341 res!252938) b!430332))

(assert (= (and b!430332 res!252939) b!430335))

(assert (= (and b!430335 res!252936) b!430330))

(assert (= (and b!430330 res!252943) b!430329))

(assert (= (and b!430329 (not res!252933)) b!430339))

(assert (= (and b!430339 c!55421) b!430323))

(assert (= (and b!430339 (not c!55421)) b!430328))

(assert (= (and b!430339 (not res!252940)) b!430331))

(assert (= (and b!430327 condMapEmpty!18510) mapIsEmpty!18510))

(assert (= (and b!430327 (not condMapEmpty!18510)) mapNonEmpty!18510))

(get-info :version)

(assert (= (and mapNonEmpty!18510 ((_ is ValueCellFull!5286) mapValue!18510)) b!430325))

(assert (= (and b!430327 ((_ is ValueCellFull!5286) mapDefault!18510)) b!430337))

(assert (= start!39848 b!430327))

(declare-fun b_lambda!9225 () Bool)

(assert (=> (not b_lambda!9225) (not b!430339)))

(declare-fun t!13024 () Bool)

(declare-fun tb!3521 () Bool)

(assert (=> (and start!39848 (= defaultEntry!557 defaultEntry!557) t!13024) tb!3521))

(declare-fun result!6561 () Bool)

(assert (=> tb!3521 (= result!6561 tp_is_empty!11259)))

(assert (=> b!430339 t!13024))

(declare-fun b_and!17893 () Bool)

(assert (= b_and!17891 (and (=> t!13024 result!6561) b_and!17893)))

(declare-fun m!418565 () Bool)

(assert (=> mapNonEmpty!18510 m!418565))

(declare-fun m!418567 () Bool)

(assert (=> start!39848 m!418567))

(declare-fun m!418569 () Bool)

(assert (=> start!39848 m!418569))

(declare-fun m!418571 () Bool)

(assert (=> b!430333 m!418571))

(declare-fun m!418573 () Bool)

(assert (=> b!430330 m!418573))

(declare-fun m!418575 () Bool)

(assert (=> b!430330 m!418575))

(declare-fun m!418577 () Bool)

(assert (=> b!430330 m!418577))

(declare-fun m!418579 () Bool)

(assert (=> b!430329 m!418579))

(declare-fun m!418581 () Bool)

(assert (=> b!430329 m!418581))

(declare-fun m!418583 () Bool)

(assert (=> b!430329 m!418583))

(declare-fun m!418585 () Bool)

(assert (=> b!430329 m!418585))

(assert (=> b!430329 m!418579))

(declare-fun m!418587 () Bool)

(assert (=> b!430329 m!418587))

(declare-fun m!418589 () Bool)

(assert (=> b!430329 m!418589))

(declare-fun m!418591 () Bool)

(assert (=> b!430342 m!418591))

(declare-fun m!418593 () Bool)

(assert (=> b!430324 m!418593))

(declare-fun m!418595 () Bool)

(assert (=> b!430341 m!418595))

(declare-fun m!418597 () Bool)

(assert (=> b!430341 m!418597))

(declare-fun m!418599 () Bool)

(assert (=> b!430331 m!418599))

(assert (=> b!430331 m!418599))

(declare-fun m!418601 () Bool)

(assert (=> b!430331 m!418601))

(assert (=> b!430331 m!418579))

(assert (=> b!430331 m!418579))

(declare-fun m!418603 () Bool)

(assert (=> b!430331 m!418603))

(assert (=> b!430339 m!418579))

(declare-fun m!418605 () Bool)

(assert (=> b!430339 m!418605))

(declare-fun m!418607 () Bool)

(assert (=> b!430339 m!418607))

(declare-fun m!418609 () Bool)

(assert (=> b!430339 m!418609))

(assert (=> b!430339 m!418607))

(assert (=> b!430339 m!418605))

(declare-fun m!418611 () Bool)

(assert (=> b!430339 m!418611))

(declare-fun m!418613 () Bool)

(assert (=> b!430334 m!418613))

(declare-fun m!418615 () Bool)

(assert (=> b!430338 m!418615))

(declare-fun m!418617 () Bool)

(assert (=> b!430340 m!418617))

(declare-fun m!418619 () Bool)

(assert (=> b!430332 m!418619))

(declare-fun m!418621 () Bool)

(assert (=> b!430323 m!418621))

(check-sat (not b!430330) (not b!430342) tp_is_empty!11259 (not b!430341) (not start!39848) (not b!430333) (not b!430339) (not b!430334) (not b!430331) (not b!430338) (not b!430332) (not b!430340) (not b!430329) b_and!17893 (not b!430323) (not b_lambda!9225) (not mapNonEmpty!18510) (not b_next!10107))
(check-sat b_and!17893 (not b_next!10107))
