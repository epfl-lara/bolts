; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40026 () Bool)

(assert start!40026)

(declare-fun b_free!10285 () Bool)

(declare-fun b_next!10285 () Bool)

(assert (=> start!40026 (= b_free!10285 (not b_next!10285))))

(declare-fun tp!36384 () Bool)

(declare-fun b_and!18247 () Bool)

(assert (=> start!40026 (= tp!36384 b_and!18247)))

(declare-fun b!435841 () Bool)

(declare-datatypes ((Unit!12911 0))(
  ( (Unit!12912) )
))
(declare-fun e!257429 () Unit!12911)

(declare-fun Unit!12913 () Unit!12911)

(assert (=> b!435841 (= e!257429 Unit!12913)))

(declare-fun mapNonEmpty!18777 () Bool)

(declare-fun mapRes!18777 () Bool)

(declare-fun tp!36383 () Bool)

(declare-fun e!257430 () Bool)

(assert (=> mapNonEmpty!18777 (= mapRes!18777 (and tp!36383 e!257430))))

(declare-datatypes ((V!16355 0))(
  ( (V!16356 (val!5763 Int)) )
))
(declare-datatypes ((ValueCell!5375 0))(
  ( (ValueCellFull!5375 (v!8006 V!16355)) (EmptyCell!5375) )
))
(declare-datatypes ((array!26677 0))(
  ( (array!26678 (arr!12785 (Array (_ BitVec 32) ValueCell!5375)) (size!13137 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26677)

(declare-fun mapRest!18777 () (Array (_ BitVec 32) ValueCell!5375))

(declare-fun mapKey!18777 () (_ BitVec 32))

(declare-fun mapValue!18777 () ValueCell!5375)

(assert (=> mapNonEmpty!18777 (= (arr!12785 _values!549) (store mapRest!18777 mapKey!18777 mapValue!18777))))

(declare-fun b!435842 () Bool)

(declare-fun tp_is_empty!11437 () Bool)

(assert (=> b!435842 (= e!257430 tp_is_empty!11437)))

(declare-fun b!435843 () Bool)

(declare-fun res!256950 () Bool)

(declare-fun e!257427 () Bool)

(assert (=> b!435843 (=> (not res!256950) (not e!257427))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!435843 (= res!256950 (validKeyInArray!0 k!794))))

(declare-fun b!435844 () Bool)

(declare-fun res!256947 () Bool)

(declare-fun e!257432 () Bool)

(assert (=> b!435844 (=> (not res!256947) (not e!257432))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!435844 (= res!256947 (bvsle from!863 i!563))))

(declare-fun b!435845 () Bool)

(declare-fun res!256946 () Bool)

(assert (=> b!435845 (=> (not res!256946) (not e!257427))))

(declare-datatypes ((array!26679 0))(
  ( (array!26680 (arr!12786 (Array (_ BitVec 32) (_ BitVec 64))) (size!13138 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26679)

(declare-datatypes ((List!7611 0))(
  ( (Nil!7608) (Cons!7607 (h!8463 (_ BitVec 64)) (t!13353 List!7611)) )
))
(declare-fun arrayNoDuplicates!0 (array!26679 (_ BitVec 32) List!7611) Bool)

(assert (=> b!435845 (= res!256946 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7608))))

(declare-fun b!435846 () Bool)

(declare-fun e!257425 () Bool)

(assert (=> b!435846 (= e!257425 tp_is_empty!11437)))

(declare-fun b!435847 () Bool)

(declare-fun e!257434 () Bool)

(assert (=> b!435847 (= e!257434 (and e!257425 mapRes!18777))))

(declare-fun condMapEmpty!18777 () Bool)

(declare-fun mapDefault!18777 () ValueCell!5375)

