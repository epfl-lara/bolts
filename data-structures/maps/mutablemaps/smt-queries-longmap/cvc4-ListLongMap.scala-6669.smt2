; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84018 () Bool)

(assert start!84018)

(declare-fun b_free!19745 () Bool)

(declare-fun b_next!19745 () Bool)

(assert (=> start!84018 (= b_free!19745 (not b_next!19745))))

(declare-fun tp!68759 () Bool)

(declare-fun b_and!31591 () Bool)

(assert (=> start!84018 (= tp!68759 b_and!31591)))

(declare-fun b!981429 () Bool)

(declare-fun res!656868 () Bool)

(declare-fun e!553299 () Bool)

(assert (=> b!981429 (=> (not res!656868) (not e!553299))))

(declare-datatypes ((array!61579 0))(
  ( (array!61580 (arr!29643 (Array (_ BitVec 32) (_ BitVec 64))) (size!30123 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61579)

(declare-fun from!1932 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!981429 (= res!656868 (validKeyInArray!0 (select (arr!29643 _keys!1544) from!1932)))))

(declare-fun b!981430 () Bool)

(declare-fun e!553304 () Bool)

(declare-fun tp_is_empty!22793 () Bool)

(assert (=> b!981430 (= e!553304 tp_is_empty!22793)))

(declare-fun b!981431 () Bool)

(declare-fun e!553303 () Bool)

(assert (=> b!981431 (= e!553303 tp_is_empty!22793)))

(declare-fun b!981432 () Bool)

(declare-fun res!656865 () Bool)

(assert (=> b!981432 (=> (not res!656865) (not e!553299))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61579 (_ BitVec 32)) Bool)

(assert (=> b!981432 (= res!656865 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!981433 () Bool)

(declare-fun res!656866 () Bool)

(assert (=> b!981433 (=> (not res!656866) (not e!553299))))

(declare-datatypes ((V!35373 0))(
  ( (V!35374 (val!11447 Int)) )
))
(declare-datatypes ((ValueCell!10915 0))(
  ( (ValueCellFull!10915 (v!14009 V!35373)) (EmptyCell!10915) )
))
(declare-datatypes ((array!61581 0))(
  ( (array!61582 (arr!29644 (Array (_ BitVec 32) ValueCell!10915)) (size!30124 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61581)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!981433 (= res!656866 (and (= (size!30124 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30123 _keys!1544) (size!30124 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!981434 () Bool)

(declare-fun e!553300 () Bool)

(assert (=> b!981434 (= e!553300 (not true))))

(declare-datatypes ((tuple2!14766 0))(
  ( (tuple2!14767 (_1!7393 (_ BitVec 64)) (_2!7393 V!35373)) )
))
(declare-datatypes ((List!20672 0))(
  ( (Nil!20669) (Cons!20668 (h!21830 tuple2!14766) (t!29375 List!20672)) )
))
(declare-datatypes ((ListLongMap!13477 0))(
  ( (ListLongMap!13478 (toList!6754 List!20672)) )
))
(declare-fun lt!435714 () ListLongMap!13477)

(declare-fun lt!435713 () tuple2!14766)

(declare-fun lt!435712 () tuple2!14766)

(declare-fun +!2958 (ListLongMap!13477 tuple2!14766) ListLongMap!13477)

(assert (=> b!981434 (= (+!2958 (+!2958 lt!435714 lt!435713) lt!435712) (+!2958 (+!2958 lt!435714 lt!435712) lt!435713))))

(declare-fun lt!435711 () V!35373)

(assert (=> b!981434 (= lt!435712 (tuple2!14767 (select (arr!29643 _keys!1544) from!1932) lt!435711))))

(declare-fun zeroValue!1220 () V!35373)

(assert (=> b!981434 (= lt!435713 (tuple2!14767 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-datatypes ((Unit!32591 0))(
  ( (Unit!32592) )
))
(declare-fun lt!435715 () Unit!32591)

(declare-fun addCommutativeForDiffKeys!620 (ListLongMap!13477 (_ BitVec 64) V!35373 (_ BitVec 64) V!35373) Unit!32591)

(assert (=> b!981434 (= lt!435715 (addCommutativeForDiffKeys!620 lt!435714 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!29643 _keys!1544) from!1932) lt!435711))))

(declare-fun mapIsEmpty!36218 () Bool)

(declare-fun mapRes!36218 () Bool)

(assert (=> mapIsEmpty!36218 mapRes!36218))

(declare-fun mapNonEmpty!36218 () Bool)

(declare-fun tp!68758 () Bool)

(assert (=> mapNonEmpty!36218 (= mapRes!36218 (and tp!68758 e!553304))))

(declare-fun mapRest!36218 () (Array (_ BitVec 32) ValueCell!10915))

(declare-fun mapKey!36218 () (_ BitVec 32))

(declare-fun mapValue!36218 () ValueCell!10915)

(assert (=> mapNonEmpty!36218 (= (arr!29644 _values!1278) (store mapRest!36218 mapKey!36218 mapValue!36218))))

(declare-fun b!981435 () Bool)

(assert (=> b!981435 (= e!553299 e!553300)))

(declare-fun res!656867 () Bool)

(assert (=> b!981435 (=> (not res!656867) (not e!553300))))

(assert (=> b!981435 (= res!656867 (not (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29643 _keys!1544) from!1932))))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15384 (ValueCell!10915 V!35373) V!35373)

(declare-fun dynLambda!1787 (Int (_ BitVec 64)) V!35373)

(assert (=> b!981435 (= lt!435711 (get!15384 (select (arr!29644 _values!1278) from!1932) (dynLambda!1787 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun minValue!1220 () V!35373)

(declare-fun getCurrentListMapNoExtraKeys!3414 (array!61579 array!61581 (_ BitVec 32) (_ BitVec 32) V!35373 V!35373 (_ BitVec 32) Int) ListLongMap!13477)

(assert (=> b!981435 (= lt!435714 (getCurrentListMapNoExtraKeys!3414 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!981436 () Bool)

(declare-fun res!656864 () Bool)

(assert (=> b!981436 (=> (not res!656864) (not e!553299))))

(assert (=> b!981436 (= res!656864 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30123 _keys!1544))))))

(declare-fun b!981437 () Bool)

(declare-fun res!656870 () Bool)

(assert (=> b!981437 (=> (not res!656870) (not e!553299))))

(declare-datatypes ((List!20673 0))(
  ( (Nil!20670) (Cons!20669 (h!21831 (_ BitVec 64)) (t!29376 List!20673)) )
))
(declare-fun arrayNoDuplicates!0 (array!61579 (_ BitVec 32) List!20673) Bool)

(assert (=> b!981437 (= res!656870 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20670))))

(declare-fun res!656869 () Bool)

(assert (=> start!84018 (=> (not res!656869) (not e!553299))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84018 (= res!656869 (validMask!0 mask!1948))))

(assert (=> start!84018 e!553299))

(assert (=> start!84018 true))

(assert (=> start!84018 tp_is_empty!22793))

(declare-fun e!553301 () Bool)

(declare-fun array_inv!22799 (array!61581) Bool)

(assert (=> start!84018 (and (array_inv!22799 _values!1278) e!553301)))

(assert (=> start!84018 tp!68759))

(declare-fun array_inv!22800 (array!61579) Bool)

(assert (=> start!84018 (array_inv!22800 _keys!1544)))

(declare-fun b!981438 () Bool)

(assert (=> b!981438 (= e!553301 (and e!553303 mapRes!36218))))

(declare-fun condMapEmpty!36218 () Bool)

(declare-fun mapDefault!36218 () ValueCell!10915)

