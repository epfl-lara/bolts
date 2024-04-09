; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39564 () Bool)

(assert start!39564)

(declare-fun b_free!9823 () Bool)

(declare-fun b_next!9823 () Bool)

(assert (=> start!39564 (= b_free!9823 (not b_next!9823))))

(declare-fun tp!34997 () Bool)

(declare-fun b_and!17497 () Bool)

(assert (=> start!39564 (= tp!34997 b_and!17497)))

(declare-fun res!247294 () Bool)

(declare-fun e!251559 () Bool)

(assert (=> start!39564 (=> (not res!247294) (not e!251559))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!25777 0))(
  ( (array!25778 (arr!12335 (Array (_ BitVec 32) (_ BitVec 64))) (size!12687 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25777)

(assert (=> start!39564 (= res!247294 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12687 _keys!709))))))

(assert (=> start!39564 e!251559))

(declare-fun tp_is_empty!10975 () Bool)

(assert (=> start!39564 tp_is_empty!10975))

(assert (=> start!39564 tp!34997))

(assert (=> start!39564 true))

(declare-datatypes ((V!15739 0))(
  ( (V!15740 (val!5532 Int)) )
))
(declare-datatypes ((ValueCell!5144 0))(
  ( (ValueCellFull!5144 (v!7775 V!15739)) (EmptyCell!5144) )
))
(declare-datatypes ((array!25779 0))(
  ( (array!25780 (arr!12336 (Array (_ BitVec 32) ValueCell!5144)) (size!12688 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25779)

(declare-fun e!251560 () Bool)

(declare-fun array_inv!8990 (array!25779) Bool)

(assert (=> start!39564 (and (array_inv!8990 _values!549) e!251560)))

(declare-fun array_inv!8991 (array!25777) Bool)

(assert (=> start!39564 (array_inv!8991 _keys!709)))

(declare-fun b!423069 () Bool)

(declare-fun res!247300 () Bool)

(assert (=> b!423069 (=> (not res!247300) (not e!251559))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!423069 (= res!247300 (validKeyInArray!0 k!794))))

(declare-fun b!423070 () Bool)

(declare-fun e!251561 () Bool)

(assert (=> b!423070 (= e!251561 tp_is_empty!10975)))

(declare-fun b!423071 () Bool)

(declare-fun res!247299 () Bool)

(assert (=> b!423071 (=> (not res!247299) (not e!251559))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!423071 (= res!247299 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12687 _keys!709))))))

(declare-fun b!423072 () Bool)

(declare-fun e!251563 () Bool)

(assert (=> b!423072 (= e!251563 false)))

(declare-fun minValue!515 () V!15739)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!15739)

(declare-datatypes ((tuple2!7194 0))(
  ( (tuple2!7195 (_1!3607 (_ BitVec 64)) (_2!3607 V!15739)) )
))
(declare-datatypes ((List!7239 0))(
  ( (Nil!7236) (Cons!7235 (h!8091 tuple2!7194) (t!12691 List!7239)) )
))
(declare-datatypes ((ListLongMap!6121 0))(
  ( (ListLongMap!6122 (toList!3076 List!7239)) )
))
(declare-fun lt!194097 () ListLongMap!6121)

(declare-fun v!412 () V!15739)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun defaultEntry!557 () Int)

(declare-fun lt!194095 () array!25777)

(declare-fun getCurrentListMapNoExtraKeys!1277 (array!25777 array!25779 (_ BitVec 32) (_ BitVec 32) V!15739 V!15739 (_ BitVec 32) Int) ListLongMap!6121)

(assert (=> b!423072 (= lt!194097 (getCurrentListMapNoExtraKeys!1277 lt!194095 (array!25780 (store (arr!12336 _values!549) i!563 (ValueCellFull!5144 v!412)) (size!12688 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!194096 () ListLongMap!6121)

(assert (=> b!423072 (= lt!194096 (getCurrentListMapNoExtraKeys!1277 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!423073 () Bool)

(declare-fun res!247291 () Bool)

(assert (=> b!423073 (=> (not res!247291) (not e!251559))))

(assert (=> b!423073 (= res!247291 (or (= (select (arr!12335 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12335 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!423074 () Bool)

(declare-fun res!247302 () Bool)

(assert (=> b!423074 (=> (not res!247302) (not e!251559))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!423074 (= res!247302 (validMask!0 mask!1025))))

(declare-fun b!423075 () Bool)

(declare-fun res!247301 () Bool)

(assert (=> b!423075 (=> (not res!247301) (not e!251559))))

(declare-fun arrayContainsKey!0 (array!25777 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!423075 (= res!247301 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!423076 () Bool)

(declare-fun res!247293 () Bool)

(assert (=> b!423076 (=> (not res!247293) (not e!251559))))

(assert (=> b!423076 (= res!247293 (and (= (size!12688 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12687 _keys!709) (size!12688 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!423077 () Bool)

(declare-fun res!247295 () Bool)

(assert (=> b!423077 (=> (not res!247295) (not e!251563))))

(assert (=> b!423077 (= res!247295 (bvsle from!863 i!563))))

(declare-fun b!423078 () Bool)

(declare-fun mapRes!18084 () Bool)

(assert (=> b!423078 (= e!251560 (and e!251561 mapRes!18084))))

(declare-fun condMapEmpty!18084 () Bool)

(declare-fun mapDefault!18084 () ValueCell!5144)

