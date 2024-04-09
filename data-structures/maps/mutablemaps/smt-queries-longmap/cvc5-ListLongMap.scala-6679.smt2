; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84074 () Bool)

(assert start!84074)

(declare-fun b_free!19801 () Bool)

(declare-fun b_next!19801 () Bool)

(assert (=> start!84074 (= b_free!19801 (not b_next!19801))))

(declare-fun tp!68926 () Bool)

(declare-fun b_and!31703 () Bool)

(assert (=> start!84074 (= tp!68926 b_and!31703)))

(declare-fun res!657542 () Bool)

(declare-fun e!553804 () Bool)

(assert (=> start!84074 (=> (not res!657542) (not e!553804))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84074 (= res!657542 (validMask!0 mask!1948))))

(assert (=> start!84074 e!553804))

(assert (=> start!84074 true))

(declare-fun tp_is_empty!22849 () Bool)

(assert (=> start!84074 tp_is_empty!22849))

(declare-datatypes ((V!35449 0))(
  ( (V!35450 (val!11475 Int)) )
))
(declare-datatypes ((ValueCell!10943 0))(
  ( (ValueCellFull!10943 (v!14037 V!35449)) (EmptyCell!10943) )
))
(declare-datatypes ((array!61683 0))(
  ( (array!61684 (arr!29695 (Array (_ BitVec 32) ValueCell!10943)) (size!30175 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61683)

(declare-fun e!553803 () Bool)

(declare-fun array_inv!22835 (array!61683) Bool)

(assert (=> start!84074 (and (array_inv!22835 _values!1278) e!553803)))

(assert (=> start!84074 tp!68926))

(declare-datatypes ((array!61685 0))(
  ( (array!61686 (arr!29696 (Array (_ BitVec 32) (_ BitVec 64))) (size!30176 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61685)

(declare-fun array_inv!22836 (array!61685) Bool)

(assert (=> start!84074 (array_inv!22836 _keys!1544)))

(declare-fun b!982409 () Bool)

(declare-fun res!657543 () Bool)

(assert (=> b!982409 (=> (not res!657543) (not e!553804))))

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!982409 (= res!657543 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30176 _keys!1544))))))

(declare-fun b!982410 () Bool)

(declare-fun res!657539 () Bool)

(assert (=> b!982410 (=> (not res!657539) (not e!553804))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!982410 (= res!657539 (and (= (size!30175 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30176 _keys!1544) (size!30175 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!982411 () Bool)

(declare-fun res!657536 () Bool)

(assert (=> b!982411 (=> (not res!657536) (not e!553804))))

(assert (=> b!982411 (= res!657536 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!982412 () Bool)

(declare-fun e!553807 () Bool)

(assert (=> b!982412 (= e!553807 tp_is_empty!22849)))

(declare-fun b!982413 () Bool)

(declare-fun e!553808 () Bool)

(assert (=> b!982413 (= e!553808 tp_is_empty!22849)))

(declare-fun mapIsEmpty!36302 () Bool)

(declare-fun mapRes!36302 () Bool)

(assert (=> mapIsEmpty!36302 mapRes!36302))

(declare-fun b!982414 () Bool)

(declare-fun e!553805 () Bool)

(assert (=> b!982414 (= e!553804 e!553805)))

(declare-fun res!657540 () Bool)

(assert (=> b!982414 (=> (not res!657540) (not e!553805))))

(assert (=> b!982414 (= res!657540 (not (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29696 _keys!1544) from!1932))))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun lt!436133 () V!35449)

(declare-fun get!15422 (ValueCell!10943 V!35449) V!35449)

(declare-fun dynLambda!1805 (Int (_ BitVec 64)) V!35449)

(assert (=> b!982414 (= lt!436133 (get!15422 (select (arr!29695 _values!1278) from!1932) (dynLambda!1805 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun minValue!1220 () V!35449)

(declare-fun zeroValue!1220 () V!35449)

(declare-datatypes ((tuple2!14804 0))(
  ( (tuple2!14805 (_1!7412 (_ BitVec 64)) (_2!7412 V!35449)) )
))
(declare-datatypes ((List!20710 0))(
  ( (Nil!20707) (Cons!20706 (h!21868 tuple2!14804) (t!29469 List!20710)) )
))
(declare-datatypes ((ListLongMap!13515 0))(
  ( (ListLongMap!13516 (toList!6773 List!20710)) )
))
(declare-fun lt!436134 () ListLongMap!13515)

(declare-fun getCurrentListMapNoExtraKeys!3432 (array!61685 array!61683 (_ BitVec 32) (_ BitVec 32) V!35449 V!35449 (_ BitVec 32) Int) ListLongMap!13515)

(assert (=> b!982414 (= lt!436134 (getCurrentListMapNoExtraKeys!3432 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!982415 () Bool)

(declare-fun res!657537 () Bool)

(assert (=> b!982415 (=> (not res!657537) (not e!553804))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!982415 (= res!657537 (validKeyInArray!0 (select (arr!29696 _keys!1544) from!1932)))))

(declare-fun b!982416 () Bool)

(assert (=> b!982416 (= e!553803 (and e!553808 mapRes!36302))))

(declare-fun condMapEmpty!36302 () Bool)

(declare-fun mapDefault!36302 () ValueCell!10943)

