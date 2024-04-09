; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41154 () Bool)

(assert start!41154)

(declare-fun b_free!11015 () Bool)

(declare-fun b_next!11015 () Bool)

(assert (=> start!41154 (= b_free!11015 (not b_next!11015))))

(declare-fun tp!38881 () Bool)

(declare-fun b_and!19287 () Bool)

(assert (=> start!41154 (= tp!38881 b_and!19287)))

(declare-fun b!459088 () Bool)

(declare-fun e!267979 () Bool)

(declare-fun e!267973 () Bool)

(assert (=> b!459088 (= e!267979 e!267973)))

(declare-fun res!274414 () Bool)

(assert (=> b!459088 (=> (not res!274414) (not e!267973))))

(declare-datatypes ((array!28471 0))(
  ( (array!28472 (arr!13673 (Array (_ BitVec 32) (_ BitVec 64))) (size!14025 (_ BitVec 32))) )
))
(declare-fun lt!207752 () array!28471)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28471 (_ BitVec 32)) Bool)

(assert (=> b!459088 (= res!274414 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!207752 mask!1025))))

(declare-fun _keys!709 () array!28471)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!459088 (= lt!207752 (array!28472 (store (arr!13673 _keys!709) i!563 k!794) (size!14025 _keys!709)))))

(declare-fun b!459089 () Bool)

(declare-fun res!274419 () Bool)

(assert (=> b!459089 (=> (not res!274419) (not e!267979))))

(declare-datatypes ((List!8268 0))(
  ( (Nil!8265) (Cons!8264 (h!9120 (_ BitVec 64)) (t!14170 List!8268)) )
))
(declare-fun arrayNoDuplicates!0 (array!28471 (_ BitVec 32) List!8268) Bool)

(assert (=> b!459089 (= res!274419 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8265))))

(declare-fun b!459090 () Bool)

(declare-fun e!267976 () Bool)

(declare-fun e!267971 () Bool)

(declare-fun mapRes!20179 () Bool)

(assert (=> b!459090 (= e!267976 (and e!267971 mapRes!20179))))

(declare-fun condMapEmpty!20179 () Bool)

(declare-datatypes ((V!17575 0))(
  ( (V!17576 (val!6221 Int)) )
))
(declare-datatypes ((ValueCell!5833 0))(
  ( (ValueCellFull!5833 (v!8495 V!17575)) (EmptyCell!5833) )
))
(declare-datatypes ((array!28473 0))(
  ( (array!28474 (arr!13674 (Array (_ BitVec 32) ValueCell!5833)) (size!14026 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28473)

(declare-fun mapDefault!20179 () ValueCell!5833)

