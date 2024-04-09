; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84090 () Bool)

(assert start!84090)

(declare-fun b_free!19817 () Bool)

(declare-fun b_next!19817 () Bool)

(assert (=> start!84090 (= b_free!19817 (not b_next!19817))))

(declare-fun tp!68974 () Bool)

(declare-fun b_and!31735 () Bool)

(assert (=> start!84090 (= tp!68974 b_and!31735)))

(declare-fun b!982689 () Bool)

(declare-fun res!657733 () Bool)

(declare-fun e!553947 () Bool)

(assert (=> b!982689 (=> (not res!657733) (not e!553947))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((array!61715 0))(
  ( (array!61716 (arr!29711 (Array (_ BitVec 32) (_ BitVec 64))) (size!30191 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61715)

(assert (=> b!982689 (= res!657733 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30191 _keys!1544))))))

(declare-fun b!982690 () Bool)

(declare-fun res!657729 () Bool)

(assert (=> b!982690 (=> (not res!657729) (not e!553947))))

(declare-datatypes ((List!20723 0))(
  ( (Nil!20720) (Cons!20719 (h!21881 (_ BitVec 64)) (t!29498 List!20723)) )
))
(declare-fun arrayNoDuplicates!0 (array!61715 (_ BitVec 32) List!20723) Bool)

(assert (=> b!982690 (= res!657729 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20720))))

(declare-fun b!982691 () Bool)

(declare-fun e!553952 () Bool)

(assert (=> b!982691 (= e!553947 e!553952)))

(declare-fun res!657732 () Bool)

(assert (=> b!982691 (=> (not res!657732) (not e!553952))))

(assert (=> b!982691 (= res!657732 (not (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29711 _keys!1544) from!1932))))))

(declare-datatypes ((V!35469 0))(
  ( (V!35470 (val!11483 Int)) )
))
(declare-fun lt!436255 () V!35469)

(declare-datatypes ((ValueCell!10951 0))(
  ( (ValueCellFull!10951 (v!14045 V!35469)) (EmptyCell!10951) )
))
(declare-datatypes ((array!61717 0))(
  ( (array!61718 (arr!29712 (Array (_ BitVec 32) ValueCell!10951)) (size!30192 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61717)

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15433 (ValueCell!10951 V!35469) V!35469)

(declare-fun dynLambda!1812 (Int (_ BitVec 64)) V!35469)

(assert (=> b!982691 (= lt!436255 (get!15433 (select (arr!29712 _values!1278) from!1932) (dynLambda!1812 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun minValue!1220 () V!35469)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((tuple2!14818 0))(
  ( (tuple2!14819 (_1!7419 (_ BitVec 64)) (_2!7419 V!35469)) )
))
(declare-datatypes ((List!20724 0))(
  ( (Nil!20721) (Cons!20720 (h!21882 tuple2!14818) (t!29499 List!20724)) )
))
(declare-datatypes ((ListLongMap!13529 0))(
  ( (ListLongMap!13530 (toList!6780 List!20724)) )
))
(declare-fun lt!436251 () ListLongMap!13529)

(declare-fun zeroValue!1220 () V!35469)

(declare-fun getCurrentListMapNoExtraKeys!3439 (array!61715 array!61717 (_ BitVec 32) (_ BitVec 32) V!35469 V!35469 (_ BitVec 32) Int) ListLongMap!13529)

(assert (=> b!982691 (= lt!436251 (getCurrentListMapNoExtraKeys!3439 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!982692 () Bool)

(declare-fun e!553949 () Bool)

(declare-fun tp_is_empty!22865 () Bool)

(assert (=> b!982692 (= e!553949 tp_is_empty!22865)))

(declare-fun mapNonEmpty!36326 () Bool)

(declare-fun mapRes!36326 () Bool)

(declare-fun tp!68975 () Bool)

(assert (=> mapNonEmpty!36326 (= mapRes!36326 (and tp!68975 e!553949))))

(declare-fun mapKey!36326 () (_ BitVec 32))

(declare-fun mapValue!36326 () ValueCell!10951)

(declare-fun mapRest!36326 () (Array (_ BitVec 32) ValueCell!10951))

(assert (=> mapNonEmpty!36326 (= (arr!29712 _values!1278) (store mapRest!36326 mapKey!36326 mapValue!36326))))

(declare-fun mapIsEmpty!36326 () Bool)

(assert (=> mapIsEmpty!36326 mapRes!36326))

(declare-fun b!982694 () Bool)

(declare-fun e!553948 () Bool)

(declare-fun e!553950 () Bool)

(assert (=> b!982694 (= e!553948 (and e!553950 mapRes!36326))))

(declare-fun condMapEmpty!36326 () Bool)

(declare-fun mapDefault!36326 () ValueCell!10951)

