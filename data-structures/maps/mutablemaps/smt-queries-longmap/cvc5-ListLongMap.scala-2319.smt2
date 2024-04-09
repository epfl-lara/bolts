; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37384 () Bool)

(assert start!37384)

(declare-fun b_free!8503 () Bool)

(declare-fun b_next!8503 () Bool)

(assert (=> start!37384 (= b_free!8503 (not b_next!8503))))

(declare-fun tp!30225 () Bool)

(declare-fun b_and!15763 () Bool)

(assert (=> start!37384 (= tp!30225 b_and!15763)))

(declare-fun mapIsEmpty!15291 () Bool)

(declare-fun mapRes!15291 () Bool)

(assert (=> mapIsEmpty!15291 mapRes!15291))

(declare-fun b!379576 () Bool)

(declare-fun res!215376 () Bool)

(declare-fun e!230929 () Bool)

(assert (=> b!379576 (=> (not res!215376) (not e!230929))))

(declare-datatypes ((array!22199 0))(
  ( (array!22200 (arr!10565 (Array (_ BitVec 32) (_ BitVec 64))) (size!10917 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22199)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!379576 (= res!215376 (or (= (select (arr!10565 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10565 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!379577 () Bool)

(declare-fun e!230924 () Bool)

(assert (=> b!379577 (= e!230924 true)))

(declare-datatypes ((V!13307 0))(
  ( (V!13308 (val!4620 Int)) )
))
(declare-datatypes ((tuple2!6150 0))(
  ( (tuple2!6151 (_1!3085 (_ BitVec 64)) (_2!3085 V!13307)) )
))
(declare-datatypes ((List!6022 0))(
  ( (Nil!6019) (Cons!6018 (h!6874 tuple2!6150) (t!11180 List!6022)) )
))
(declare-datatypes ((ListLongMap!5077 0))(
  ( (ListLongMap!5078 (toList!2554 List!6022)) )
))
(declare-fun lt!177434 () ListLongMap!5077)

(declare-fun lt!177435 () ListLongMap!5077)

(declare-fun lt!177444 () tuple2!6150)

(declare-fun +!895 (ListLongMap!5077 tuple2!6150) ListLongMap!5077)

(assert (=> b!379577 (= lt!177434 (+!895 lt!177435 lt!177444))))

(declare-fun v!373 () V!13307)

(declare-datatypes ((Unit!11685 0))(
  ( (Unit!11686) )
))
(declare-fun lt!177440 () Unit!11685)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun lt!177436 () ListLongMap!5077)

(declare-fun minValue!472 () V!13307)

(declare-fun addCommutativeForDiffKeys!307 (ListLongMap!5077 (_ BitVec 64) V!13307 (_ BitVec 64) V!13307) Unit!11685)

(assert (=> b!379577 (= lt!177440 (addCommutativeForDiffKeys!307 lt!177436 k!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!379578 () Bool)

(declare-fun res!215367 () Bool)

(declare-fun e!230926 () Bool)

(assert (=> b!379578 (=> (not res!215367) (not e!230926))))

(declare-fun lt!177439 () array!22199)

(declare-datatypes ((List!6023 0))(
  ( (Nil!6020) (Cons!6019 (h!6875 (_ BitVec 64)) (t!11181 List!6023)) )
))
(declare-fun arrayNoDuplicates!0 (array!22199 (_ BitVec 32) List!6023) Bool)

(assert (=> b!379578 (= res!215367 (arrayNoDuplicates!0 lt!177439 #b00000000000000000000000000000000 Nil!6020))))

(declare-fun b!379579 () Bool)

(declare-fun res!215371 () Bool)

(assert (=> b!379579 (=> (not res!215371) (not e!230929))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22199 (_ BitVec 32)) Bool)

(assert (=> b!379579 (= res!215371 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!379580 () Bool)

(declare-fun e!230930 () Bool)

(declare-fun tp_is_empty!9151 () Bool)

(assert (=> b!379580 (= e!230930 tp_is_empty!9151)))

(declare-fun b!379581 () Bool)

(declare-fun e!230925 () Bool)

(declare-fun e!230928 () Bool)

(assert (=> b!379581 (= e!230925 (and e!230928 mapRes!15291))))

(declare-fun condMapEmpty!15291 () Bool)

(declare-datatypes ((ValueCell!4232 0))(
  ( (ValueCellFull!4232 (v!6813 V!13307)) (EmptyCell!4232) )
))
(declare-datatypes ((array!22201 0))(
  ( (array!22202 (arr!10566 (Array (_ BitVec 32) ValueCell!4232)) (size!10918 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22201)

(declare-fun mapDefault!15291 () ValueCell!4232)

