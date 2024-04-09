; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41114 () Bool)

(assert start!41114)

(declare-fun b_free!10997 () Bool)

(declare-fun b_next!10997 () Bool)

(assert (=> start!41114 (= b_free!10997 (not b_next!10997))))

(declare-fun tp!38824 () Bool)

(declare-fun b_and!19235 () Bool)

(assert (=> start!41114 (= tp!38824 b_and!19235)))

(declare-fun b!458420 () Bool)

(declare-fun res!273973 () Bool)

(declare-fun e!267638 () Bool)

(assert (=> b!458420 (=> (not res!273973) (not e!267638))))

(declare-datatypes ((array!28437 0))(
  ( (array!28438 (arr!13657 (Array (_ BitVec 32) (_ BitVec 64))) (size!14009 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28437)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!458420 (= res!273973 (or (= (select (arr!13657 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13657 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!458421 () Bool)

(declare-fun res!273972 () Bool)

(assert (=> b!458421 (=> (not res!273972) (not e!267638))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!17551 0))(
  ( (V!17552 (val!6212 Int)) )
))
(declare-datatypes ((ValueCell!5824 0))(
  ( (ValueCellFull!5824 (v!8482 V!17551)) (EmptyCell!5824) )
))
(declare-datatypes ((array!28439 0))(
  ( (array!28440 (arr!13658 (Array (_ BitVec 32) ValueCell!5824)) (size!14010 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28439)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!458421 (= res!273972 (and (= (size!14010 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!14009 _keys!709) (size!14010 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!458422 () Bool)

(declare-fun e!267636 () Bool)

(declare-fun e!267632 () Bool)

(assert (=> b!458422 (= e!267636 (not e!267632))))

(declare-fun res!273969 () Bool)

(assert (=> b!458422 (=> res!273969 e!267632)))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!458422 (= res!273969 (not (validKeyInArray!0 (select (arr!13657 _keys!709) from!863))))))

(declare-datatypes ((tuple2!8152 0))(
  ( (tuple2!8153 (_1!4086 (_ BitVec 64)) (_2!4086 V!17551)) )
))
(declare-datatypes ((List!8256 0))(
  ( (Nil!8253) (Cons!8252 (h!9108 tuple2!8152) (t!14140 List!8256)) )
))
(declare-datatypes ((ListLongMap!7079 0))(
  ( (ListLongMap!7080 (toList!3555 List!8256)) )
))
(declare-fun lt!207419 () ListLongMap!7079)

(declare-fun lt!207418 () ListLongMap!7079)

(assert (=> b!458422 (= lt!207419 lt!207418)))

(declare-fun lt!207416 () ListLongMap!7079)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun v!412 () V!17551)

(declare-fun +!1575 (ListLongMap!7079 tuple2!8152) ListLongMap!7079)

(assert (=> b!458422 (= lt!207418 (+!1575 lt!207416 (tuple2!8153 k!794 v!412)))))

(declare-fun minValue!515 () V!17551)

(declare-fun defaultEntry!557 () Int)

(declare-fun lt!207413 () array!28437)

(declare-fun zeroValue!515 () V!17551)

(declare-fun lt!207415 () array!28439)

(declare-fun getCurrentListMapNoExtraKeys!1727 (array!28437 array!28439 (_ BitVec 32) (_ BitVec 32) V!17551 V!17551 (_ BitVec 32) Int) ListLongMap!7079)

(assert (=> b!458422 (= lt!207419 (getCurrentListMapNoExtraKeys!1727 lt!207413 lt!207415 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!458422 (= lt!207416 (getCurrentListMapNoExtraKeys!1727 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-datatypes ((Unit!13263 0))(
  ( (Unit!13264) )
))
(declare-fun lt!207412 () Unit!13263)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!734 (array!28437 array!28439 (_ BitVec 32) (_ BitVec 32) V!17551 V!17551 (_ BitVec 32) (_ BitVec 64) V!17551 (_ BitVec 32) Int) Unit!13263)

(assert (=> b!458422 (= lt!207412 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!734 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!458423 () Bool)

(declare-fun res!273963 () Bool)

(assert (=> b!458423 (=> (not res!273963) (not e!267638))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28437 (_ BitVec 32)) Bool)

(assert (=> b!458423 (= res!273963 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun e!267634 () Bool)

(declare-fun b!458424 () Bool)

(declare-fun arrayContainsKey!0 (array!28437 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!458424 (= e!267634 (arrayContainsKey!0 _keys!709 k!794 from!863))))

(declare-fun b!458425 () Bool)

(declare-fun res!273966 () Bool)

(assert (=> b!458425 (=> (not res!273966) (not e!267638))))

(assert (=> b!458425 (= res!273966 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun res!273960 () Bool)

(assert (=> start!41114 (=> (not res!273960) (not e!267638))))

(assert (=> start!41114 (= res!273960 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!14009 _keys!709))))))

(assert (=> start!41114 e!267638))

(declare-fun tp_is_empty!12335 () Bool)

(assert (=> start!41114 tp_is_empty!12335))

(assert (=> start!41114 tp!38824))

(assert (=> start!41114 true))

(declare-fun e!267633 () Bool)

(declare-fun array_inv!9878 (array!28439) Bool)

(assert (=> start!41114 (and (array_inv!9878 _values!549) e!267633)))

(declare-fun array_inv!9879 (array!28437) Bool)

(assert (=> start!41114 (array_inv!9879 _keys!709)))

(declare-fun b!458426 () Bool)

(declare-fun e!267631 () Bool)

(assert (=> b!458426 (= e!267638 e!267631)))

(declare-fun res!273965 () Bool)

(assert (=> b!458426 (=> (not res!273965) (not e!267631))))

(assert (=> b!458426 (= res!273965 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!207413 mask!1025))))

(assert (=> b!458426 (= lt!207413 (array!28438 (store (arr!13657 _keys!709) i!563 k!794) (size!14009 _keys!709)))))

(declare-fun mapNonEmpty!20149 () Bool)

(declare-fun mapRes!20149 () Bool)

(declare-fun tp!38823 () Bool)

(declare-fun e!267635 () Bool)

(assert (=> mapNonEmpty!20149 (= mapRes!20149 (and tp!38823 e!267635))))

(declare-fun mapKey!20149 () (_ BitVec 32))

(declare-fun mapValue!20149 () ValueCell!5824)

(declare-fun mapRest!20149 () (Array (_ BitVec 32) ValueCell!5824))

(assert (=> mapNonEmpty!20149 (= (arr!13658 _values!549) (store mapRest!20149 mapKey!20149 mapValue!20149))))

(declare-fun b!458427 () Bool)

(declare-fun e!267639 () Bool)

(assert (=> b!458427 (= e!267633 (and e!267639 mapRes!20149))))

(declare-fun condMapEmpty!20149 () Bool)

(declare-fun mapDefault!20149 () ValueCell!5824)

