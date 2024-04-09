; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38706 () Bool)

(assert start!38706)

(declare-fun b_free!9235 () Bool)

(declare-fun b_next!9235 () Bool)

(assert (=> start!38706 (= b_free!9235 (not b_next!9235))))

(declare-fun tp!32828 () Bool)

(declare-fun b_and!16639 () Bool)

(assert (=> start!38706 (= tp!32828 b_and!16639)))

(declare-fun mapIsEmpty!16797 () Bool)

(declare-fun mapRes!16797 () Bool)

(assert (=> mapIsEmpty!16797 mapRes!16797))

(declare-fun b!402256 () Bool)

(declare-fun res!231766 () Bool)

(declare-fun e!242364 () Bool)

(assert (=> b!402256 (=> (not res!231766) (not e!242364))))

(declare-datatypes ((array!24105 0))(
  ( (array!24106 (arr!11499 (Array (_ BitVec 32) (_ BitVec 64))) (size!11851 (_ BitVec 32))) )
))
(declare-fun lt!187892 () array!24105)

(declare-datatypes ((List!6662 0))(
  ( (Nil!6659) (Cons!6658 (h!7514 (_ BitVec 64)) (t!11844 List!6662)) )
))
(declare-fun arrayNoDuplicates!0 (array!24105 (_ BitVec 32) List!6662) Bool)

(assert (=> b!402256 (= res!231766 (arrayNoDuplicates!0 lt!187892 #b00000000000000000000000000000000 Nil!6659))))

(declare-fun b!402257 () Bool)

(declare-fun e!242363 () Bool)

(declare-datatypes ((V!14595 0))(
  ( (V!14596 (val!5103 Int)) )
))
(declare-datatypes ((tuple2!6716 0))(
  ( (tuple2!6717 (_1!3368 (_ BitVec 64)) (_2!3368 V!14595)) )
))
(declare-datatypes ((List!6663 0))(
  ( (Nil!6660) (Cons!6659 (h!7515 tuple2!6716) (t!11845 List!6663)) )
))
(declare-datatypes ((ListLongMap!5643 0))(
  ( (ListLongMap!5644 (toList!2837 List!6663)) )
))
(declare-fun call!28366 () ListLongMap!5643)

(declare-fun call!28367 () ListLongMap!5643)

(assert (=> b!402257 (= e!242363 (= call!28366 call!28367))))

(declare-fun res!231761 () Bool)

(declare-fun e!242362 () Bool)

(assert (=> start!38706 (=> (not res!231761) (not e!242362))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun _keys!709 () array!24105)

(assert (=> start!38706 (= res!231761 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11851 _keys!709))))))

(assert (=> start!38706 e!242362))

(declare-fun tp_is_empty!10117 () Bool)

(assert (=> start!38706 tp_is_empty!10117))

(assert (=> start!38706 tp!32828))

(assert (=> start!38706 true))

(declare-datatypes ((ValueCell!4715 0))(
  ( (ValueCellFull!4715 (v!7346 V!14595)) (EmptyCell!4715) )
))
(declare-datatypes ((array!24107 0))(
  ( (array!24108 (arr!11500 (Array (_ BitVec 32) ValueCell!4715)) (size!11852 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24107)

(declare-fun e!242367 () Bool)

(declare-fun array_inv!8404 (array!24107) Bool)

(assert (=> start!38706 (and (array_inv!8404 _values!549) e!242367)))

(declare-fun array_inv!8405 (array!24105) Bool)

(assert (=> start!38706 (array_inv!8405 _keys!709)))

(declare-fun b!402258 () Bool)

(declare-fun res!231758 () Bool)

(assert (=> b!402258 (=> (not res!231758) (not e!242362))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!24105 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!402258 (= res!231758 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!402259 () Bool)

(declare-fun res!231764 () Bool)

(assert (=> b!402259 (=> (not res!231764) (not e!242362))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!402259 (= res!231764 (or (= (select (arr!11499 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11499 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!402260 () Bool)

(declare-fun e!242365 () Bool)

(assert (=> b!402260 (= e!242367 (and e!242365 mapRes!16797))))

(declare-fun condMapEmpty!16797 () Bool)

(declare-fun mapDefault!16797 () ValueCell!4715)

