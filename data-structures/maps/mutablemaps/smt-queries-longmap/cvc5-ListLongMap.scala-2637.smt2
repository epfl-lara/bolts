; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39648 () Bool)

(assert start!39648)

(declare-fun b_free!9907 () Bool)

(declare-fun b_next!9907 () Bool)

(assert (=> start!39648 (= b_free!9907 (not b_next!9907))))

(declare-fun tp!35250 () Bool)

(declare-fun b_and!17581 () Bool)

(assert (=> start!39648 (= tp!35250 b_and!17581)))

(declare-fun b!424988 () Bool)

(declare-fun res!248840 () Bool)

(declare-fun e!252348 () Bool)

(assert (=> b!424988 (=> (not res!248840) (not e!252348))))

(declare-datatypes ((array!25945 0))(
  ( (array!25946 (arr!12419 (Array (_ BitVec 32) (_ BitVec 64))) (size!12771 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25945)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!424988 (= res!248840 (or (= (select (arr!12419 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12419 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!424990 () Bool)

(declare-fun res!248844 () Bool)

(assert (=> b!424990 (=> (not res!248844) (not e!252348))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25945 (_ BitVec 32)) Bool)

(assert (=> b!424990 (= res!248844 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!424991 () Bool)

(declare-fun res!248834 () Bool)

(assert (=> b!424991 (=> (not res!248834) (not e!252348))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!424991 (= res!248834 (validMask!0 mask!1025))))

(declare-fun b!424992 () Bool)

(declare-fun res!248835 () Bool)

(declare-fun e!252344 () Bool)

(assert (=> b!424992 (=> (not res!248835) (not e!252344))))

(declare-fun lt!194535 () array!25945)

(declare-datatypes ((List!7304 0))(
  ( (Nil!7301) (Cons!7300 (h!8156 (_ BitVec 64)) (t!12756 List!7304)) )
))
(declare-fun arrayNoDuplicates!0 (array!25945 (_ BitVec 32) List!7304) Bool)

(assert (=> b!424992 (= res!248835 (arrayNoDuplicates!0 lt!194535 #b00000000000000000000000000000000 Nil!7301))))

(declare-fun b!424993 () Bool)

(declare-fun res!248833 () Bool)

(assert (=> b!424993 (=> (not res!248833) (not e!252348))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!25945 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!424993 (= res!248833 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!18210 () Bool)

(declare-fun mapRes!18210 () Bool)

(assert (=> mapIsEmpty!18210 mapRes!18210))

(declare-fun b!424994 () Bool)

(declare-fun e!252346 () Bool)

(declare-fun tp_is_empty!11059 () Bool)

(assert (=> b!424994 (= e!252346 tp_is_empty!11059)))

(declare-fun b!424995 () Bool)

(declare-fun res!248836 () Bool)

(assert (=> b!424995 (=> (not res!248836) (not e!252348))))

(assert (=> b!424995 (= res!248836 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7301))))

(declare-fun mapNonEmpty!18210 () Bool)

(declare-fun tp!35249 () Bool)

(assert (=> mapNonEmpty!18210 (= mapRes!18210 (and tp!35249 e!252346))))

(declare-datatypes ((V!15851 0))(
  ( (V!15852 (val!5574 Int)) )
))
(declare-datatypes ((ValueCell!5186 0))(
  ( (ValueCellFull!5186 (v!7817 V!15851)) (EmptyCell!5186) )
))
(declare-fun mapRest!18210 () (Array (_ BitVec 32) ValueCell!5186))

(declare-fun mapValue!18210 () ValueCell!5186)

(declare-datatypes ((array!25947 0))(
  ( (array!25948 (arr!12420 (Array (_ BitVec 32) ValueCell!5186)) (size!12772 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25947)

(declare-fun mapKey!18210 () (_ BitVec 32))

(assert (=> mapNonEmpty!18210 (= (arr!12420 _values!549) (store mapRest!18210 mapKey!18210 mapValue!18210))))

(declare-fun b!424996 () Bool)

(declare-fun e!252349 () Bool)

(assert (=> b!424996 (= e!252349 tp_is_empty!11059)))

(declare-fun b!424997 () Bool)

(declare-fun res!248837 () Bool)

(assert (=> b!424997 (=> (not res!248837) (not e!252348))))

(assert (=> b!424997 (= res!248837 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12771 _keys!709))))))

(declare-fun b!424998 () Bool)

(declare-fun e!252343 () Bool)

(assert (=> b!424998 (= e!252343 (and e!252349 mapRes!18210))))

(declare-fun condMapEmpty!18210 () Bool)

(declare-fun mapDefault!18210 () ValueCell!5186)

