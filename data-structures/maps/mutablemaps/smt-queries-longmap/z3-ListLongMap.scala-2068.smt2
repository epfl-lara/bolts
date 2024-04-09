; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35586 () Bool)

(assert start!35586)

(declare-fun b!356521 () Bool)

(declare-fun res!197948 () Bool)

(declare-fun e!218416 () Bool)

(assert (=> b!356521 (=> (not res!197948) (not e!218416))))

(declare-datatypes ((array!19599 0))(
  ( (array!19600 (arr!9290 (Array (_ BitVec 32) (_ BitVec 64))) (size!9642 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19599)

(declare-datatypes ((List!5396 0))(
  ( (Nil!5393) (Cons!5392 (h!6248 (_ BitVec 64)) (t!10554 List!5396)) )
))
(declare-fun arrayNoDuplicates!0 (array!19599 (_ BitVec 32) List!5396) Bool)

(assert (=> b!356521 (= res!197948 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5393))))

(declare-fun b!356522 () Bool)

(declare-fun e!218420 () Bool)

(declare-fun tp_is_empty!8031 () Bool)

(assert (=> b!356522 (= e!218420 tp_is_empty!8031)))

(declare-fun b!356523 () Bool)

(declare-fun res!197950 () Bool)

(assert (=> b!356523 (=> (not res!197950) (not e!218416))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((V!11685 0))(
  ( (V!11686 (val!4060 Int)) )
))
(declare-datatypes ((ValueCell!3672 0))(
  ( (ValueCellFull!3672 (v!6250 V!11685)) (EmptyCell!3672) )
))
(declare-datatypes ((array!19601 0))(
  ( (array!19602 (arr!9291 (Array (_ BitVec 32) ValueCell!3672)) (size!9643 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19601)

(assert (=> b!356523 (= res!197950 (and (= (size!9643 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9642 _keys!1456) (size!9643 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!356524 () Bool)

(declare-fun res!197943 () Bool)

(assert (=> b!356524 (=> (not res!197943) (not e!218416))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19599 (_ BitVec 32)) Bool)

(assert (=> b!356524 (= res!197943 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!356525 () Bool)

(declare-fun res!197949 () Bool)

(assert (=> b!356525 (=> (not res!197949) (not e!218416))))

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun k0!1077 () (_ BitVec 64))

(assert (=> b!356525 (= res!197949 (not (= (select (arr!9290 _keys!1456) from!1805) k0!1077)))))

(declare-fun b!356526 () Bool)

(declare-fun e!218419 () Bool)

(declare-fun mapRes!13554 () Bool)

(assert (=> b!356526 (= e!218419 (and e!218420 mapRes!13554))))

(declare-fun condMapEmpty!13554 () Bool)

(declare-fun mapDefault!13554 () ValueCell!3672)

(assert (=> b!356526 (= condMapEmpty!13554 (= (arr!9291 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3672)) mapDefault!13554)))))

(declare-fun res!197946 () Bool)

(assert (=> start!35586 (=> (not res!197946) (not e!218416))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35586 (= res!197946 (validMask!0 mask!1842))))

(assert (=> start!35586 e!218416))

(assert (=> start!35586 tp_is_empty!8031))

(assert (=> start!35586 true))

(declare-fun array_inv!6840 (array!19599) Bool)

(assert (=> start!35586 (array_inv!6840 _keys!1456)))

(declare-fun array_inv!6841 (array!19601) Bool)

(assert (=> start!35586 (and (array_inv!6841 _values!1208) e!218419)))

(declare-fun b!356527 () Bool)

(assert (=> b!356527 (= e!218416 (not true))))

(declare-fun arrayContainsKey!0 (array!19599 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!356527 (arrayContainsKey!0 _keys!1456 k0!1077 (bvadd #b00000000000000000000000000000001 from!1805))))

(declare-fun minValue!1150 () V!11685)

(declare-fun zeroValue!1150 () V!11685)

(declare-datatypes ((Unit!10981 0))(
  ( (Unit!10982) )
))
(declare-fun lt!165922 () Unit!10981)

(declare-fun lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!11 (array!19599 array!19601 (_ BitVec 32) (_ BitVec 32) V!11685 V!11685 (_ BitVec 64) (_ BitVec 32)) Unit!10981)

(assert (=> b!356527 (= lt!165922 (lemmaArrayContainsFromAndNotEqualThenContainsFromPlusOne!11 _keys!1456 _values!1208 mask!1842 extraKeys!1129 zeroValue!1150 minValue!1150 k0!1077 from!1805))))

(declare-fun mapIsEmpty!13554 () Bool)

(assert (=> mapIsEmpty!13554 mapRes!13554))

(declare-fun mapNonEmpty!13554 () Bool)

(declare-fun tp!27531 () Bool)

(declare-fun e!218418 () Bool)

(assert (=> mapNonEmpty!13554 (= mapRes!13554 (and tp!27531 e!218418))))

(declare-fun mapKey!13554 () (_ BitVec 32))

(declare-fun mapValue!13554 () ValueCell!3672)

(declare-fun mapRest!13554 () (Array (_ BitVec 32) ValueCell!3672))

(assert (=> mapNonEmpty!13554 (= (arr!9291 _values!1208) (store mapRest!13554 mapKey!13554 mapValue!13554))))

(declare-fun b!356528 () Bool)

(declare-fun res!197947 () Bool)

(assert (=> b!356528 (=> (not res!197947) (not e!218416))))

(assert (=> b!356528 (= res!197947 (arrayContainsKey!0 _keys!1456 k0!1077 from!1805))))

(declare-fun b!356529 () Bool)

(declare-fun res!197944 () Bool)

(assert (=> b!356529 (=> (not res!197944) (not e!218416))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!356529 (= res!197944 (validKeyInArray!0 k0!1077))))

(declare-fun b!356530 () Bool)

(declare-fun res!197945 () Bool)

(assert (=> b!356530 (=> (not res!197945) (not e!218416))))

(assert (=> b!356530 (= res!197945 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9642 _keys!1456))))))

(declare-fun b!356531 () Bool)

(assert (=> b!356531 (= e!218418 tp_is_empty!8031)))

(assert (= (and start!35586 res!197946) b!356523))

(assert (= (and b!356523 res!197950) b!356524))

(assert (= (and b!356524 res!197943) b!356521))

(assert (= (and b!356521 res!197948) b!356529))

(assert (= (and b!356529 res!197944) b!356530))

(assert (= (and b!356530 res!197945) b!356528))

(assert (= (and b!356528 res!197947) b!356525))

(assert (= (and b!356525 res!197949) b!356527))

(assert (= (and b!356526 condMapEmpty!13554) mapIsEmpty!13554))

(assert (= (and b!356526 (not condMapEmpty!13554)) mapNonEmpty!13554))

(get-info :version)

(assert (= (and mapNonEmpty!13554 ((_ is ValueCellFull!3672) mapValue!13554)) b!356531))

(assert (= (and b!356526 ((_ is ValueCellFull!3672) mapDefault!13554)) b!356522))

(assert (= start!35586 b!356526))

(declare-fun m!354865 () Bool)

(assert (=> mapNonEmpty!13554 m!354865))

(declare-fun m!354867 () Bool)

(assert (=> start!35586 m!354867))

(declare-fun m!354869 () Bool)

(assert (=> start!35586 m!354869))

(declare-fun m!354871 () Bool)

(assert (=> start!35586 m!354871))

(declare-fun m!354873 () Bool)

(assert (=> b!356525 m!354873))

(declare-fun m!354875 () Bool)

(assert (=> b!356528 m!354875))

(declare-fun m!354877 () Bool)

(assert (=> b!356524 m!354877))

(declare-fun m!354879 () Bool)

(assert (=> b!356529 m!354879))

(declare-fun m!354881 () Bool)

(assert (=> b!356527 m!354881))

(declare-fun m!354883 () Bool)

(assert (=> b!356527 m!354883))

(declare-fun m!354885 () Bool)

(assert (=> b!356521 m!354885))

(check-sat (not start!35586) (not b!356528) (not b!356529) tp_is_empty!8031 (not b!356524) (not b!356527) (not b!356521) (not mapNonEmpty!13554))
(check-sat)
