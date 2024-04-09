; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84654 () Bool)

(assert start!84654)

(declare-fun b_free!20051 () Bool)

(declare-fun b_next!20051 () Bool)

(assert (=> start!84654 (= b_free!20051 (not b_next!20051))))

(declare-fun tp!69946 () Bool)

(declare-fun b_and!32201 () Bool)

(assert (=> start!84654 (= tp!69946 b_and!32201)))

(declare-fun b!989555 () Bool)

(declare-fun e!558028 () Bool)

(declare-fun tp_is_empty!23267 () Bool)

(assert (=> b!989555 (= e!558028 tp_is_empty!23267)))

(declare-fun b!989556 () Bool)

(declare-fun res!661837 () Bool)

(declare-fun e!558027 () Bool)

(assert (=> b!989556 (=> (not res!661837) (not e!558027))))

(declare-datatypes ((array!62483 0))(
  ( (array!62484 (arr!30090 (Array (_ BitVec 32) (_ BitVec 64))) (size!30570 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62483)

(declare-fun from!1932 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!989556 (= res!661837 (validKeyInArray!0 (select (arr!30090 _keys!1544) from!1932)))))

(declare-fun b!989557 () Bool)

(assert (=> b!989557 (= e!558027 false)))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((V!36005 0))(
  ( (V!36006 (val!11684 Int)) )
))
(declare-fun minValue!1220 () V!36005)

(declare-datatypes ((ValueCell!11152 0))(
  ( (ValueCellFull!11152 (v!14254 V!36005)) (EmptyCell!11152) )
))
(declare-datatypes ((array!62485 0))(
  ( (array!62486 (arr!30091 (Array (_ BitVec 32) ValueCell!11152)) (size!30571 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62485)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun zeroValue!1220 () V!36005)

(declare-fun defaultEntry!1281 () Int)

(declare-datatypes ((tuple2!14988 0))(
  ( (tuple2!14989 (_1!7504 (_ BitVec 64)) (_2!7504 V!36005)) )
))
(declare-datatypes ((List!20938 0))(
  ( (Nil!20935) (Cons!20934 (h!22096 tuple2!14988) (t!29903 List!20938)) )
))
(declare-datatypes ((ListLongMap!13699 0))(
  ( (ListLongMap!13700 (toList!6865 List!20938)) )
))
(declare-fun lt!439049 () ListLongMap!13699)

(declare-fun getCurrentListMapNoExtraKeys!3515 (array!62483 array!62485 (_ BitVec 32) (_ BitVec 32) V!36005 V!36005 (_ BitVec 32) Int) ListLongMap!13699)

(assert (=> b!989557 (= lt!439049 (getCurrentListMapNoExtraKeys!3515 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun res!661831 () Bool)

(assert (=> start!84654 (=> (not res!661831) (not e!558027))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84654 (= res!661831 (validMask!0 mask!1948))))

(assert (=> start!84654 e!558027))

(assert (=> start!84654 true))

(assert (=> start!84654 tp_is_empty!23267))

(declare-fun e!558025 () Bool)

(declare-fun array_inv!23105 (array!62485) Bool)

(assert (=> start!84654 (and (array_inv!23105 _values!1278) e!558025)))

(assert (=> start!84654 tp!69946))

(declare-fun array_inv!23106 (array!62483) Bool)

(assert (=> start!84654 (array_inv!23106 _keys!1544)))

(declare-fun mapNonEmpty!36946 () Bool)

(declare-fun mapRes!36946 () Bool)

(declare-fun tp!69945 () Bool)

(assert (=> mapNonEmpty!36946 (= mapRes!36946 (and tp!69945 e!558028))))

(declare-fun mapKey!36946 () (_ BitVec 32))

(declare-fun mapValue!36946 () ValueCell!11152)

(declare-fun mapRest!36946 () (Array (_ BitVec 32) ValueCell!11152))

(assert (=> mapNonEmpty!36946 (= (arr!30091 _values!1278) (store mapRest!36946 mapKey!36946 mapValue!36946))))

(declare-fun b!989558 () Bool)

(declare-fun res!661835 () Bool)

(assert (=> b!989558 (=> (not res!661835) (not e!558027))))

(assert (=> b!989558 (= res!661835 (and (= (size!30571 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30570 _keys!1544) (size!30571 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!989559 () Bool)

(declare-fun e!558029 () Bool)

(assert (=> b!989559 (= e!558025 (and e!558029 mapRes!36946))))

(declare-fun condMapEmpty!36946 () Bool)

(declare-fun mapDefault!36946 () ValueCell!11152)

