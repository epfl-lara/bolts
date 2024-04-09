; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39558 () Bool)

(assert start!39558)

(declare-fun b_free!9817 () Bool)

(declare-fun b_next!9817 () Bool)

(assert (=> start!39558 (= b_free!9817 (not b_next!9817))))

(declare-fun tp!34979 () Bool)

(declare-fun b_and!17491 () Bool)

(assert (=> start!39558 (= tp!34979 b_and!17491)))

(declare-fun b!422934 () Bool)

(declare-fun e!251504 () Bool)

(declare-fun tp_is_empty!10969 () Bool)

(assert (=> b!422934 (= e!251504 tp_is_empty!10969)))

(declare-fun b!422935 () Bool)

(declare-fun res!247186 () Bool)

(declare-fun e!251505 () Bool)

(assert (=> b!422935 (=> (not res!247186) (not e!251505))))

(declare-datatypes ((array!25765 0))(
  ( (array!25766 (arr!12329 (Array (_ BitVec 32) (_ BitVec 64))) (size!12681 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25765)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!15731 0))(
  ( (V!15732 (val!5529 Int)) )
))
(declare-datatypes ((ValueCell!5141 0))(
  ( (ValueCellFull!5141 (v!7772 V!15731)) (EmptyCell!5141) )
))
(declare-datatypes ((array!25767 0))(
  ( (array!25768 (arr!12330 (Array (_ BitVec 32) ValueCell!5141)) (size!12682 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25767)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!422935 (= res!247186 (and (= (size!12682 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12681 _keys!709) (size!12682 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun res!247194 () Bool)

(assert (=> start!39558 (=> (not res!247194) (not e!251505))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39558 (= res!247194 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12681 _keys!709))))))

(assert (=> start!39558 e!251505))

(assert (=> start!39558 tp_is_empty!10969))

(assert (=> start!39558 tp!34979))

(assert (=> start!39558 true))

(declare-fun e!251506 () Bool)

(declare-fun array_inv!8984 (array!25767) Bool)

(assert (=> start!39558 (and (array_inv!8984 _values!549) e!251506)))

(declare-fun array_inv!8985 (array!25765) Bool)

(assert (=> start!39558 (array_inv!8985 _keys!709)))

(declare-fun b!422936 () Bool)

(declare-fun e!251507 () Bool)

(assert (=> b!422936 (= e!251507 tp_is_empty!10969)))

(declare-fun b!422937 () Bool)

(declare-fun res!247184 () Bool)

(declare-fun e!251509 () Bool)

(assert (=> b!422937 (=> (not res!247184) (not e!251509))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!422937 (= res!247184 (bvsle from!863 i!563))))

(declare-fun mapNonEmpty!18075 () Bool)

(declare-fun mapRes!18075 () Bool)

(declare-fun tp!34980 () Bool)

(assert (=> mapNonEmpty!18075 (= mapRes!18075 (and tp!34980 e!251507))))

(declare-fun mapKey!18075 () (_ BitVec 32))

(declare-fun mapRest!18075 () (Array (_ BitVec 32) ValueCell!5141))

(declare-fun mapValue!18075 () ValueCell!5141)

(assert (=> mapNonEmpty!18075 (= (arr!12330 _values!549) (store mapRest!18075 mapKey!18075 mapValue!18075))))

(declare-fun b!422938 () Bool)

(declare-fun res!247193 () Bool)

(assert (=> b!422938 (=> (not res!247193) (not e!251509))))

(declare-fun lt!194069 () array!25765)

(declare-datatypes ((List!7234 0))(
  ( (Nil!7231) (Cons!7230 (h!8086 (_ BitVec 64)) (t!12686 List!7234)) )
))
(declare-fun arrayNoDuplicates!0 (array!25765 (_ BitVec 32) List!7234) Bool)

(assert (=> b!422938 (= res!247193 (arrayNoDuplicates!0 lt!194069 #b00000000000000000000000000000000 Nil!7231))))

(declare-fun b!422939 () Bool)

(declare-fun res!247187 () Bool)

(assert (=> b!422939 (=> (not res!247187) (not e!251505))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!422939 (= res!247187 (validMask!0 mask!1025))))

(declare-fun b!422940 () Bool)

(assert (=> b!422940 (= e!251505 e!251509)))

(declare-fun res!247185 () Bool)

(assert (=> b!422940 (=> (not res!247185) (not e!251509))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25765 (_ BitVec 32)) Bool)

(assert (=> b!422940 (= res!247185 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!194069 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!422940 (= lt!194069 (array!25766 (store (arr!12329 _keys!709) i!563 k!794) (size!12681 _keys!709)))))

(declare-fun b!422941 () Bool)

(declare-fun res!247189 () Bool)

(assert (=> b!422941 (=> (not res!247189) (not e!251505))))

(assert (=> b!422941 (= res!247189 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!422942 () Bool)

(declare-fun res!247192 () Bool)

(assert (=> b!422942 (=> (not res!247192) (not e!251505))))

(assert (=> b!422942 (= res!247192 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12681 _keys!709))))))

(declare-fun b!422943 () Bool)

(declare-fun res!247191 () Bool)

(assert (=> b!422943 (=> (not res!247191) (not e!251505))))

(declare-fun arrayContainsKey!0 (array!25765 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!422943 (= res!247191 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!422944 () Bool)

(assert (=> b!422944 (= e!251506 (and e!251504 mapRes!18075))))

(declare-fun condMapEmpty!18075 () Bool)

(declare-fun mapDefault!18075 () ValueCell!5141)

