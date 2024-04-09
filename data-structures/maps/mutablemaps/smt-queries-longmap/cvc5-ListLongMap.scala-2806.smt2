; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40732 () Bool)

(assert start!40732)

(declare-fun b_free!10735 () Bool)

(declare-fun b_next!10735 () Bool)

(assert (=> start!40732 (= b_free!10735 (not b_next!10735))))

(declare-fun tp!38025 () Bool)

(declare-fun b_and!18761 () Bool)

(assert (=> start!40732 (= tp!38025 b_and!18761)))

(declare-datatypes ((V!17203 0))(
  ( (V!17204 (val!6081 Int)) )
))
(declare-fun minValue!515 () V!17203)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((tuple2!7936 0))(
  ( (tuple2!7937 (_1!3978 (_ BitVec 64)) (_2!3978 V!17203)) )
))
(declare-datatypes ((List!8044 0))(
  ( (Nil!8041) (Cons!8040 (h!8896 tuple2!7936) (t!13814 List!8044)) )
))
(declare-datatypes ((ListLongMap!6863 0))(
  ( (ListLongMap!6864 (toList!3447 List!8044)) )
))
(declare-fun call!29795 () ListLongMap!6863)

(declare-datatypes ((ValueCell!5693 0))(
  ( (ValueCellFull!5693 (v!8332 V!17203)) (EmptyCell!5693) )
))
(declare-datatypes ((array!27913 0))(
  ( (array!27914 (arr!13399 (Array (_ BitVec 32) ValueCell!5693)) (size!13751 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27913)

(declare-fun zeroValue!515 () V!17203)

(declare-fun bm!29791 () Bool)

(declare-fun lt!204707 () array!27913)

(declare-datatypes ((array!27915 0))(
  ( (array!27916 (arr!13400 (Array (_ BitVec 32) (_ BitVec 64))) (size!13752 (_ BitVec 32))) )
))
(declare-fun lt!204708 () array!27915)

(declare-fun c!55934 () Bool)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun _keys!709 () array!27915)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1624 (array!27915 array!27913 (_ BitVec 32) (_ BitVec 32) V!17203 V!17203 (_ BitVec 32) Int) ListLongMap!6863)

(assert (=> bm!29791 (= call!29795 (getCurrentListMapNoExtraKeys!1624 (ite c!55934 _keys!709 lt!204708) (ite c!55934 _values!549 lt!204707) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!450709 () Bool)

(declare-fun e!264075 () Bool)

(declare-fun e!264067 () Bool)

(declare-fun mapRes!19743 () Bool)

(assert (=> b!450709 (= e!264075 (and e!264067 mapRes!19743))))

(declare-fun condMapEmpty!19743 () Bool)

(declare-fun mapDefault!19743 () ValueCell!5693)

