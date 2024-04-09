; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71128 () Bool)

(assert start!71128)

(declare-fun b_free!13291 () Bool)

(declare-fun b_next!13291 () Bool)

(assert (=> start!71128 (= b_free!13291 (not b_next!13291))))

(declare-fun tp!46629 () Bool)

(declare-fun b_and!22223 () Bool)

(assert (=> start!71128 (= tp!46629 b_and!22223)))

(declare-fun b!825671 () Bool)

(declare-fun e!459692 () Bool)

(declare-datatypes ((array!46144 0))(
  ( (array!46145 (arr!22114 (Array (_ BitVec 32) (_ BitVec 64))) (size!22535 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46144)

(assert (=> b!825671 (= e!459692 (bvsle #b00000000000000000000000000000000 (size!22535 _keys!976)))))

(declare-fun res!562987 () Bool)

(declare-fun e!459691 () Bool)

(assert (=> start!71128 (=> (not res!562987) (not e!459691))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71128 (= res!562987 (validMask!0 mask!1312))))

(assert (=> start!71128 e!459691))

(declare-fun tp_is_empty!15001 () Bool)

(assert (=> start!71128 tp_is_empty!15001))

(declare-fun array_inv!17617 (array!46144) Bool)

(assert (=> start!71128 (array_inv!17617 _keys!976)))

(assert (=> start!71128 true))

(declare-datatypes ((V!25003 0))(
  ( (V!25004 (val!7548 Int)) )
))
(declare-datatypes ((ValueCell!7085 0))(
  ( (ValueCellFull!7085 (v!9977 V!25003)) (EmptyCell!7085) )
))
(declare-datatypes ((array!46146 0))(
  ( (array!46147 (arr!22115 (Array (_ BitVec 32) ValueCell!7085)) (size!22536 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46146)

(declare-fun e!459696 () Bool)

(declare-fun array_inv!17618 (array!46146) Bool)

(assert (=> start!71128 (and (array_inv!17618 _values!788) e!459696)))

(assert (=> start!71128 tp!46629))

(declare-datatypes ((tuple2!9998 0))(
  ( (tuple2!9999 (_1!5009 (_ BitVec 64)) (_2!5009 V!25003)) )
))
(declare-fun lt!373165 () tuple2!9998)

(declare-fun b!825672 () Bool)

(declare-fun e!459697 () Bool)

(declare-datatypes ((List!15841 0))(
  ( (Nil!15838) (Cons!15837 (h!16966 tuple2!9998) (t!22194 List!15841)) )
))
(declare-datatypes ((ListLongMap!8835 0))(
  ( (ListLongMap!8836 (toList!4433 List!15841)) )
))
(declare-fun lt!373163 () ListLongMap!8835)

(declare-fun lt!373166 () ListLongMap!8835)

(declare-fun lt!373169 () tuple2!9998)

(declare-fun +!1894 (ListLongMap!8835 tuple2!9998) ListLongMap!8835)

(assert (=> b!825672 (= e!459697 (= lt!373163 (+!1894 (+!1894 lt!373166 lt!373165) lt!373169)))))

(declare-fun e!459690 () Bool)

(declare-fun b!825673 () Bool)

(declare-fun zeroValueAfter!34 () V!25003)

(assert (=> b!825673 (= e!459690 (= lt!373163 (+!1894 (+!1894 lt!373166 (tuple2!9999 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!373165)))))

(declare-fun b!825674 () Bool)

(declare-fun e!459694 () Bool)

(assert (=> b!825674 (= e!459694 tp_is_empty!15001)))

(declare-fun b!825675 () Bool)

(declare-fun e!459695 () Bool)

(declare-fun mapRes!24124 () Bool)

(assert (=> b!825675 (= e!459696 (and e!459695 mapRes!24124))))

(declare-fun condMapEmpty!24124 () Bool)

(declare-fun mapDefault!24124 () ValueCell!7085)

