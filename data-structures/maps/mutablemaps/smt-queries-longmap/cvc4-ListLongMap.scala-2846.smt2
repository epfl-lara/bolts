; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41074 () Bool)

(assert start!41074)

(declare-fun b_free!10979 () Bool)

(declare-fun b_next!10979 () Bool)

(assert (=> start!41074 (= b_free!10979 (not b_next!10979))))

(declare-fun tp!38766 () Bool)

(declare-fun b_and!19183 () Bool)

(assert (=> start!41074 (= tp!38766 b_and!19183)))

(declare-fun b!457790 () Bool)

(declare-fun e!267315 () Bool)

(assert (=> b!457790 (= e!267315 true)))

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((V!17527 0))(
  ( (V!17528 (val!6203 Int)) )
))
(declare-datatypes ((tuple2!8138 0))(
  ( (tuple2!8139 (_1!4079 (_ BitVec 64)) (_2!4079 V!17527)) )
))
(declare-datatypes ((List!8241 0))(
  ( (Nil!8238) (Cons!8237 (h!9093 tuple2!8138) (t!14107 List!8241)) )
))
(declare-datatypes ((ListLongMap!7065 0))(
  ( (ListLongMap!7066 (toList!3548 List!8241)) )
))
(declare-fun lt!207126 () ListLongMap!7065)

(declare-datatypes ((ValueCell!5815 0))(
  ( (ValueCellFull!5815 (v!8469 V!17527)) (EmptyCell!5815) )
))
(declare-datatypes ((array!28401 0))(
  ( (array!28402 (arr!13640 (Array (_ BitVec 32) ValueCell!5815)) (size!13992 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28401)

(declare-datatypes ((array!28403 0))(
  ( (array!28404 (arr!13641 (Array (_ BitVec 32) (_ BitVec 64))) (size!13993 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28403)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun lt!207124 () ListLongMap!7065)

(declare-fun +!1568 (ListLongMap!7065 tuple2!8138) ListLongMap!7065)

(declare-fun get!6728 (ValueCell!5815 V!17527) V!17527)

(declare-fun dynLambda!880 (Int (_ BitVec 64)) V!17527)

(assert (=> b!457790 (= lt!207124 (+!1568 lt!207126 (tuple2!8139 (select (arr!13641 _keys!709) from!863) (get!6728 (select (arr!13640 _values!549) from!863) (dynLambda!880 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!457791 () Bool)

(declare-fun res!273514 () Bool)

(declare-fun e!267319 () Bool)

(assert (=> b!457791 (=> (not res!273514) (not e!267319))))

(declare-fun lt!207129 () array!28403)

(declare-datatypes ((List!8242 0))(
  ( (Nil!8239) (Cons!8238 (h!9094 (_ BitVec 64)) (t!14108 List!8242)) )
))
(declare-fun arrayNoDuplicates!0 (array!28403 (_ BitVec 32) List!8242) Bool)

(assert (=> b!457791 (= res!273514 (arrayNoDuplicates!0 lt!207129 #b00000000000000000000000000000000 Nil!8239))))

(declare-fun b!457792 () Bool)

(declare-fun res!273513 () Bool)

(declare-fun e!267317 () Bool)

(assert (=> b!457792 (=> (not res!273513) (not e!267317))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28403 (_ BitVec 32)) Bool)

(assert (=> b!457792 (= res!273513 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!457793 () Bool)

(assert (=> b!457793 (= e!267317 e!267319)))

(declare-fun res!273518 () Bool)

(assert (=> b!457793 (=> (not res!273518) (not e!267319))))

(assert (=> b!457793 (= res!273518 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!207129 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!457793 (= lt!207129 (array!28404 (store (arr!13641 _keys!709) i!563 k!794) (size!13993 _keys!709)))))

(declare-fun b!457794 () Bool)

(declare-fun e!267314 () Bool)

(declare-fun e!267318 () Bool)

(declare-fun mapRes!20119 () Bool)

(assert (=> b!457794 (= e!267314 (and e!267318 mapRes!20119))))

(declare-fun condMapEmpty!20119 () Bool)

(declare-fun mapDefault!20119 () ValueCell!5815)

