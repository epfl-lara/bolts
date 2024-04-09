; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83322 () Bool)

(assert start!83322)

(declare-fun b_free!19287 () Bool)

(declare-fun b_next!19287 () Bool)

(assert (=> start!83322 (= b_free!19287 (not b_next!19287))))

(declare-fun tp!67140 () Bool)

(declare-fun b_and!30813 () Bool)

(assert (=> start!83322 (= tp!67140 b_and!30813)))

(declare-fun b!972011 () Bool)

(declare-fun e!547932 () Bool)

(assert (=> b!972011 (= e!547932 (not true))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34563 0))(
  ( (V!34564 (val!11143 Int)) )
))
(declare-datatypes ((tuple2!14392 0))(
  ( (tuple2!14393 (_1!7206 (_ BitVec 64)) (_2!7206 V!34563)) )
))
(declare-datatypes ((List!20282 0))(
  ( (Nil!20279) (Cons!20278 (h!21440 tuple2!14392) (t!28675 List!20282)) )
))
(declare-datatypes ((ListLongMap!13103 0))(
  ( (ListLongMap!13104 (toList!6567 List!20282)) )
))
(declare-fun lt!431909 () ListLongMap!13103)

(declare-fun lt!431910 () (_ BitVec 64))

(declare-datatypes ((ValueCell!10611 0))(
  ( (ValueCellFull!10611 (v!13702 V!34563)) (EmptyCell!10611) )
))
(declare-datatypes ((array!60401 0))(
  ( (array!60402 (arr!29060 (Array (_ BitVec 32) ValueCell!10611)) (size!29540 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60401)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34563)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!60403 0))(
  ( (array!60404 (arr!29061 (Array (_ BitVec 32) (_ BitVec 64))) (size!29541 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60403)

(declare-fun zeroValue!1367 () V!34563)

(declare-fun +!2845 (ListLongMap!13103 tuple2!14392) ListLongMap!13103)

(declare-fun getCurrentListMap!3752 (array!60403 array!60401 (_ BitVec 32) (_ BitVec 32) V!34563 V!34563 (_ BitVec 32) Int) ListLongMap!13103)

(declare-fun get!15076 (ValueCell!10611 V!34563) V!34563)

(declare-fun dynLambda!1684 (Int (_ BitVec 64)) V!34563)

(assert (=> b!972011 (= lt!431909 (+!2845 (getCurrentListMap!3752 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvadd #b00000000000000000000000000000001 (bvsub from!2118 #b00000000000000000000000000000001)) defaultEntry!1428) (tuple2!14393 lt!431910 (get!15076 (select (arr!29060 _values!1425) (bvsub from!2118 #b00000000000000000000000000000001)) (dynLambda!1684 defaultEntry!1428 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-datatypes ((Unit!32351 0))(
  ( (Unit!32352) )
))
(declare-fun lt!431911 () Unit!32351)

(declare-fun lemmaListMapRecursiveValidKeyArray!256 (array!60403 array!60401 (_ BitVec 32) (_ BitVec 32) V!34563 V!34563 (_ BitVec 32) Int) Unit!32351)

(assert (=> b!972011 (= lt!431911 (lemmaListMapRecursiveValidKeyArray!256 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!972012 () Bool)

(declare-fun res!650733 () Bool)

(declare-fun e!547934 () Bool)

(assert (=> b!972012 (=> (not res!650733) (not e!547934))))

(declare-fun i!822 () (_ BitVec 32))

(declare-fun contains!5615 (ListLongMap!13103 (_ BitVec 64)) Bool)

(assert (=> b!972012 (= res!650733 (contains!5615 (getCurrentListMap!3752 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29061 _keys!1717) i!822)))))

(declare-fun b!972013 () Bool)

(declare-fun e!547933 () Bool)

(declare-fun tp_is_empty!22185 () Bool)

(assert (=> b!972013 (= e!547933 tp_is_empty!22185)))

(declare-fun b!972014 () Bool)

(declare-fun res!650731 () Bool)

(assert (=> b!972014 (=> (not res!650731) (not e!547934))))

(declare-datatypes ((List!20283 0))(
  ( (Nil!20280) (Cons!20279 (h!21441 (_ BitVec 64)) (t!28676 List!20283)) )
))
(declare-fun arrayNoDuplicates!0 (array!60403 (_ BitVec 32) List!20283) Bool)

(assert (=> b!972014 (= res!650731 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20280))))

(declare-fun b!972015 () Bool)

(declare-fun res!650730 () Bool)

(assert (=> b!972015 (=> (not res!650730) (not e!547934))))

(assert (=> b!972015 (= res!650730 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29541 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29541 _keys!1717))))))

(declare-fun b!972016 () Bool)

(declare-fun e!547931 () Bool)

(declare-fun mapRes!35287 () Bool)

(assert (=> b!972016 (= e!547931 (and e!547933 mapRes!35287))))

(declare-fun condMapEmpty!35287 () Bool)

(declare-fun mapDefault!35287 () ValueCell!10611)

(assert (=> b!972016 (= condMapEmpty!35287 (= (arr!29060 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10611)) mapDefault!35287)))))

(declare-fun b!972017 () Bool)

(declare-fun res!650732 () Bool)

(assert (=> b!972017 (=> (not res!650732) (not e!547934))))

(assert (=> b!972017 (= res!650732 (and (= (size!29540 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29541 _keys!1717) (size!29540 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!972018 () Bool)

(declare-fun e!547930 () Bool)

(assert (=> b!972018 (= e!547930 tp_is_empty!22185)))

(declare-fun b!972019 () Bool)

(assert (=> b!972019 (= e!547934 e!547932)))

(declare-fun res!650737 () Bool)

(assert (=> b!972019 (=> (not res!650737) (not e!547932))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!972019 (= res!650737 (validKeyInArray!0 lt!431910))))

(assert (=> b!972019 (= lt!431910 (select (arr!29061 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)))))

(assert (=> b!972019 (= lt!431909 (getCurrentListMap!3752 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!972020 () Bool)

(declare-fun res!650735 () Bool)

(assert (=> b!972020 (=> (not res!650735) (not e!547934))))

(assert (=> b!972020 (= res!650735 (validKeyInArray!0 (select (arr!29061 _keys!1717) i!822)))))

(declare-fun mapNonEmpty!35287 () Bool)

(declare-fun tp!67141 () Bool)

(assert (=> mapNonEmpty!35287 (= mapRes!35287 (and tp!67141 e!547930))))

(declare-fun mapKey!35287 () (_ BitVec 32))

(declare-fun mapRest!35287 () (Array (_ BitVec 32) ValueCell!10611))

(declare-fun mapValue!35287 () ValueCell!10611)

(assert (=> mapNonEmpty!35287 (= (arr!29060 _values!1425) (store mapRest!35287 mapKey!35287 mapValue!35287))))

(declare-fun res!650734 () Bool)

(assert (=> start!83322 (=> (not res!650734) (not e!547934))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83322 (= res!650734 (validMask!0 mask!2147))))

(assert (=> start!83322 e!547934))

(assert (=> start!83322 true))

(declare-fun array_inv!22381 (array!60401) Bool)

(assert (=> start!83322 (and (array_inv!22381 _values!1425) e!547931)))

(assert (=> start!83322 tp_is_empty!22185))

(assert (=> start!83322 tp!67140))

(declare-fun array_inv!22382 (array!60403) Bool)

(assert (=> start!83322 (array_inv!22382 _keys!1717)))

(declare-fun mapIsEmpty!35287 () Bool)

(assert (=> mapIsEmpty!35287 mapRes!35287))

(declare-fun b!972021 () Bool)

(declare-fun res!650736 () Bool)

(assert (=> b!972021 (=> (not res!650736) (not e!547934))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60403 (_ BitVec 32)) Bool)

(assert (=> b!972021 (= res!650736 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(assert (= (and start!83322 res!650734) b!972017))

(assert (= (and b!972017 res!650732) b!972021))

(assert (= (and b!972021 res!650736) b!972014))

(assert (= (and b!972014 res!650731) b!972015))

(assert (= (and b!972015 res!650730) b!972020))

(assert (= (and b!972020 res!650735) b!972012))

(assert (= (and b!972012 res!650733) b!972019))

(assert (= (and b!972019 res!650737) b!972011))

(assert (= (and b!972016 condMapEmpty!35287) mapIsEmpty!35287))

(assert (= (and b!972016 (not condMapEmpty!35287)) mapNonEmpty!35287))

(get-info :version)

(assert (= (and mapNonEmpty!35287 ((_ is ValueCellFull!10611) mapValue!35287)) b!972018))

(assert (= (and b!972016 ((_ is ValueCellFull!10611) mapDefault!35287)) b!972013))

(assert (= start!83322 b!972016))

(declare-fun b_lambda!14481 () Bool)

(assert (=> (not b_lambda!14481) (not b!972011)))

(declare-fun t!28674 () Bool)

(declare-fun tb!6243 () Bool)

(assert (=> (and start!83322 (= defaultEntry!1428 defaultEntry!1428) t!28674) tb!6243))

(declare-fun result!12455 () Bool)

(assert (=> tb!6243 (= result!12455 tp_is_empty!22185)))

(assert (=> b!972011 t!28674))

(declare-fun b_and!30815 () Bool)

(assert (= b_and!30813 (and (=> t!28674 result!12455) b_and!30815)))

(declare-fun m!899503 () Bool)

(assert (=> b!972019 m!899503))

(declare-fun m!899505 () Bool)

(assert (=> b!972019 m!899505))

(declare-fun m!899507 () Bool)

(assert (=> b!972019 m!899507))

(declare-fun m!899509 () Bool)

(assert (=> b!972011 m!899509))

(declare-fun m!899511 () Bool)

(assert (=> b!972011 m!899511))

(declare-fun m!899513 () Bool)

(assert (=> b!972011 m!899513))

(assert (=> b!972011 m!899511))

(declare-fun m!899515 () Bool)

(assert (=> b!972011 m!899515))

(assert (=> b!972011 m!899509))

(assert (=> b!972011 m!899513))

(declare-fun m!899517 () Bool)

(assert (=> b!972011 m!899517))

(declare-fun m!899519 () Bool)

(assert (=> b!972011 m!899519))

(declare-fun m!899521 () Bool)

(assert (=> b!972014 m!899521))

(declare-fun m!899523 () Bool)

(assert (=> b!972020 m!899523))

(assert (=> b!972020 m!899523))

(declare-fun m!899525 () Bool)

(assert (=> b!972020 m!899525))

(declare-fun m!899527 () Bool)

(assert (=> start!83322 m!899527))

(declare-fun m!899529 () Bool)

(assert (=> start!83322 m!899529))

(declare-fun m!899531 () Bool)

(assert (=> start!83322 m!899531))

(declare-fun m!899533 () Bool)

(assert (=> b!972012 m!899533))

(assert (=> b!972012 m!899523))

(assert (=> b!972012 m!899533))

(assert (=> b!972012 m!899523))

(declare-fun m!899535 () Bool)

(assert (=> b!972012 m!899535))

(declare-fun m!899537 () Bool)

(assert (=> mapNonEmpty!35287 m!899537))

(declare-fun m!899539 () Bool)

(assert (=> b!972021 m!899539))

(check-sat (not b!972021) (not b_lambda!14481) (not b!972019) tp_is_empty!22185 (not b!972012) (not b!972020) (not b_next!19287) b_and!30815 (not mapNonEmpty!35287) (not start!83322) (not b!972014) (not b!972011))
(check-sat b_and!30815 (not b_next!19287))
