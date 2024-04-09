; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43394 () Bool)

(assert start!43394)

(declare-fun b_free!12213 () Bool)

(declare-fun b_next!12213 () Bool)

(assert (=> start!43394 (= b_free!12213 (not b_next!12213))))

(declare-fun tp!42916 () Bool)

(declare-fun b_and!20987 () Bool)

(assert (=> start!43394 (= tp!42916 b_and!20987)))

(declare-fun b!480531 () Bool)

(declare-fun res!286628 () Bool)

(declare-fun e!282745 () Bool)

(assert (=> b!480531 (=> (not res!286628) (not e!282745))))

(declare-fun k0!1332 () (_ BitVec 64))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-datatypes ((V!19371 0))(
  ( (V!19372 (val!6910 Int)) )
))
(declare-fun minValue!1458 () V!19371)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-fun zeroValue!1458 () V!19371)

(declare-datatypes ((ValueCell!6501 0))(
  ( (ValueCellFull!6501 (v!9197 V!19371)) (EmptyCell!6501) )
))
(declare-datatypes ((array!31085 0))(
  ( (array!31086 (arr!14944 (Array (_ BitVec 32) ValueCell!6501)) (size!15302 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31085)

(declare-fun defaultEntry!1519 () Int)

(declare-datatypes ((array!31087 0))(
  ( (array!31088 (arr!14945 (Array (_ BitVec 32) (_ BitVec 64))) (size!15303 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31087)

(declare-datatypes ((tuple2!9064 0))(
  ( (tuple2!9065 (_1!4542 (_ BitVec 64)) (_2!4542 V!19371)) )
))
(declare-datatypes ((List!9180 0))(
  ( (Nil!9177) (Cons!9176 (h!10032 tuple2!9064) (t!15398 List!9180)) )
))
(declare-datatypes ((ListLongMap!7991 0))(
  ( (ListLongMap!7992 (toList!4011 List!9180)) )
))
(declare-fun contains!2620 (ListLongMap!7991 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2303 (array!31087 array!31085 (_ BitVec 32) (_ BitVec 32) V!19371 V!19371 (_ BitVec 32) Int) ListLongMap!7991)

(assert (=> b!480531 (= res!286628 (contains!2620 (getCurrentListMap!2303 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k0!1332))))

(declare-fun b!480532 () Bool)

(declare-fun res!286631 () Bool)

(assert (=> b!480532 (=> (not res!286631) (not e!282745))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!480532 (= res!286631 (validKeyInArray!0 k0!1332))))

(declare-fun res!286627 () Bool)

(assert (=> start!43394 (=> (not res!286627) (not e!282745))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43394 (= res!286627 (validMask!0 mask!2352))))

(assert (=> start!43394 e!282745))

(assert (=> start!43394 true))

(declare-fun tp_is_empty!13725 () Bool)

(assert (=> start!43394 tp_is_empty!13725))

(declare-fun e!282748 () Bool)

(declare-fun array_inv!10766 (array!31085) Bool)

(assert (=> start!43394 (and (array_inv!10766 _values!1516) e!282748)))

(assert (=> start!43394 tp!42916))

(declare-fun array_inv!10767 (array!31087) Bool)

(assert (=> start!43394 (array_inv!10767 _keys!1874)))

(declare-fun b!480533 () Bool)

(declare-fun res!286630 () Bool)

(assert (=> b!480533 (=> (not res!286630) (not e!282745))))

(assert (=> b!480533 (= res!286630 (and (= (size!15302 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15303 _keys!1874) (size!15302 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun b!480534 () Bool)

(assert (=> b!480534 (= e!282745 (not true))))

(declare-fun lt!218169 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31087 (_ BitVec 32)) Bool)

(assert (=> b!480534 (arrayForallSeekEntryOrOpenFound!0 lt!218169 _keys!1874 mask!2352)))

(declare-datatypes ((Unit!14070 0))(
  ( (Unit!14071) )
))
(declare-fun lt!218171 () Unit!14070)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31087 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14070)

(assert (=> b!480534 (= lt!218171 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 _keys!1874 mask!2352 #b00000000000000000000000000000000 lt!218169))))

(declare-fun arrayScanForKey!0 (array!31087 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!480534 (= lt!218169 (arrayScanForKey!0 _keys!1874 k0!1332 #b00000000000000000000000000000000))))

(declare-fun e!282746 () Bool)

(assert (=> b!480534 e!282746))

(declare-fun c!57730 () Bool)

(assert (=> b!480534 (= c!57730 (and (not (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1332 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!218170 () Unit!14070)

(declare-fun lemmaKeyInListMapIsInArray!126 (array!31087 array!31085 (_ BitVec 32) (_ BitVec 32) V!19371 V!19371 (_ BitVec 64) Int) Unit!14070)

(assert (=> b!480534 (= lt!218170 (lemmaKeyInListMapIsInArray!126 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 k0!1332 defaultEntry!1519))))

(declare-fun mapNonEmpty!22291 () Bool)

(declare-fun mapRes!22291 () Bool)

(declare-fun tp!42915 () Bool)

(declare-fun e!282744 () Bool)

(assert (=> mapNonEmpty!22291 (= mapRes!22291 (and tp!42915 e!282744))))

(declare-fun mapKey!22291 () (_ BitVec 32))

(declare-fun mapRest!22291 () (Array (_ BitVec 32) ValueCell!6501))

(declare-fun mapValue!22291 () ValueCell!6501)

(assert (=> mapNonEmpty!22291 (= (arr!14944 _values!1516) (store mapRest!22291 mapKey!22291 mapValue!22291))))

(declare-fun b!480535 () Bool)

(declare-fun res!286629 () Bool)

(assert (=> b!480535 (=> (not res!286629) (not e!282745))))

(declare-datatypes ((List!9181 0))(
  ( (Nil!9178) (Cons!9177 (h!10033 (_ BitVec 64)) (t!15399 List!9181)) )
))
(declare-fun arrayNoDuplicates!0 (array!31087 (_ BitVec 32) List!9181) Bool)

(assert (=> b!480535 (= res!286629 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9178))))

(declare-fun b!480536 () Bool)

(declare-fun res!286632 () Bool)

(assert (=> b!480536 (=> (not res!286632) (not e!282745))))

(assert (=> b!480536 (= res!286632 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!480537 () Bool)

(assert (=> b!480537 (= e!282744 tp_is_empty!13725)))

(declare-fun b!480538 () Bool)

(assert (=> b!480538 (= e!282746 (ite (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!480539 () Bool)

(declare-fun e!282747 () Bool)

(assert (=> b!480539 (= e!282747 tp_is_empty!13725)))

(declare-fun b!480540 () Bool)

(declare-fun arrayContainsKey!0 (array!31087 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!480540 (= e!282746 (arrayContainsKey!0 _keys!1874 k0!1332 #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!22291 () Bool)

(assert (=> mapIsEmpty!22291 mapRes!22291))

(declare-fun b!480541 () Bool)

(assert (=> b!480541 (= e!282748 (and e!282747 mapRes!22291))))

(declare-fun condMapEmpty!22291 () Bool)

(declare-fun mapDefault!22291 () ValueCell!6501)

(assert (=> b!480541 (= condMapEmpty!22291 (= (arr!14944 _values!1516) ((as const (Array (_ BitVec 32) ValueCell!6501)) mapDefault!22291)))))

(assert (= (and start!43394 res!286627) b!480533))

(assert (= (and b!480533 res!286630) b!480536))

(assert (= (and b!480536 res!286632) b!480535))

(assert (= (and b!480535 res!286629) b!480531))

(assert (= (and b!480531 res!286628) b!480532))

(assert (= (and b!480532 res!286631) b!480534))

(assert (= (and b!480534 c!57730) b!480540))

(assert (= (and b!480534 (not c!57730)) b!480538))

(assert (= (and b!480541 condMapEmpty!22291) mapIsEmpty!22291))

(assert (= (and b!480541 (not condMapEmpty!22291)) mapNonEmpty!22291))

(get-info :version)

(assert (= (and mapNonEmpty!22291 ((_ is ValueCellFull!6501) mapValue!22291)) b!480537))

(assert (= (and b!480541 ((_ is ValueCellFull!6501) mapDefault!22291)) b!480539))

(assert (= start!43394 b!480541))

(declare-fun m!462143 () Bool)

(assert (=> start!43394 m!462143))

(declare-fun m!462145 () Bool)

(assert (=> start!43394 m!462145))

(declare-fun m!462147 () Bool)

(assert (=> start!43394 m!462147))

(declare-fun m!462149 () Bool)

(assert (=> b!480540 m!462149))

(declare-fun m!462151 () Bool)

(assert (=> mapNonEmpty!22291 m!462151))

(declare-fun m!462153 () Bool)

(assert (=> b!480531 m!462153))

(assert (=> b!480531 m!462153))

(declare-fun m!462155 () Bool)

(assert (=> b!480531 m!462155))

(declare-fun m!462157 () Bool)

(assert (=> b!480534 m!462157))

(declare-fun m!462159 () Bool)

(assert (=> b!480534 m!462159))

(declare-fun m!462161 () Bool)

(assert (=> b!480534 m!462161))

(declare-fun m!462163 () Bool)

(assert (=> b!480534 m!462163))

(declare-fun m!462165 () Bool)

(assert (=> b!480532 m!462165))

(declare-fun m!462167 () Bool)

(assert (=> b!480535 m!462167))

(declare-fun m!462169 () Bool)

(assert (=> b!480536 m!462169))

(check-sat (not b!480532) (not mapNonEmpty!22291) (not b!480534) (not b!480540) (not b!480536) (not b_next!12213) (not b!480535) tp_is_empty!13725 (not start!43394) b_and!20987 (not b!480531))
(check-sat b_and!20987 (not b_next!12213))
