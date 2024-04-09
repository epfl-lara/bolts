; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70736 () Bool)

(assert start!70736)

(declare-fun b_free!12985 () Bool)

(declare-fun b_next!12985 () Bool)

(assert (=> start!70736 (= b_free!12985 (not b_next!12985))))

(declare-fun tp!45697 () Bool)

(declare-fun b_and!21865 () Bool)

(assert (=> start!70736 (= tp!45697 b_and!21865)))

(declare-fun b!821178 () Bool)

(declare-fun e!456390 () Bool)

(assert (=> b!821178 (= e!456390 true)))

(declare-datatypes ((V!24595 0))(
  ( (V!24596 (val!7395 Int)) )
))
(declare-fun zeroValueBefore!34 () V!24595)

(declare-datatypes ((tuple2!9748 0))(
  ( (tuple2!9749 (_1!4884 (_ BitVec 64)) (_2!4884 V!24595)) )
))
(declare-datatypes ((List!15609 0))(
  ( (Nil!15606) (Cons!15605 (h!16734 tuple2!9748) (t!21952 List!15609)) )
))
(declare-datatypes ((ListLongMap!8585 0))(
  ( (ListLongMap!8586 (toList!4308 List!15609)) )
))
(declare-fun lt!369116 () ListLongMap!8585)

(declare-datatypes ((array!45548 0))(
  ( (array!45549 (arr!21821 (Array (_ BitVec 32) (_ BitVec 64))) (size!22242 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45548)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun minValue!754 () V!24595)

(declare-datatypes ((ValueCell!6932 0))(
  ( (ValueCellFull!6932 (v!9822 V!24595)) (EmptyCell!6932) )
))
(declare-datatypes ((array!45550 0))(
  ( (array!45551 (arr!21822 (Array (_ BitVec 32) ValueCell!6932)) (size!22243 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45550)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2443 (array!45548 array!45550 (_ BitVec 32) (_ BitVec 32) V!24595 V!24595 (_ BitVec 32) Int) ListLongMap!8585)

(assert (=> b!821178 (= lt!369116 (getCurrentListMap!2443 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!821179 () Bool)

(declare-fun e!456394 () Bool)

(declare-fun e!456389 () Bool)

(declare-fun mapRes!23650 () Bool)

(assert (=> b!821179 (= e!456394 (and e!456389 mapRes!23650))))

(declare-fun condMapEmpty!23650 () Bool)

(declare-fun mapDefault!23650 () ValueCell!6932)

