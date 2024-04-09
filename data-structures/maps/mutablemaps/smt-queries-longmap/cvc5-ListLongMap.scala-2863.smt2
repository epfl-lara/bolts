; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41242 () Bool)

(assert start!41242)

(declare-fun b_free!11077 () Bool)

(declare-fun b_next!11077 () Bool)

(assert (=> start!41242 (= b_free!11077 (not b_next!11077))))

(declare-fun tp!39070 () Bool)

(declare-fun b_and!19415 () Bool)

(assert (=> start!41242 (= tp!39070 b_and!19415)))

(declare-fun mapIsEmpty!20275 () Bool)

(declare-fun mapRes!20275 () Bool)

(assert (=> mapIsEmpty!20275 mapRes!20275))

(declare-fun b!461050 () Bool)

(declare-fun e!268920 () Bool)

(declare-fun tp_is_empty!12415 () Bool)

(assert (=> b!461050 (= e!268920 tp_is_empty!12415)))

(declare-fun b!461051 () Bool)

(declare-fun res!275824 () Bool)

(declare-fun e!268922 () Bool)

(assert (=> b!461051 (=> (not res!275824) (not e!268922))))

(declare-datatypes ((array!28593 0))(
  ( (array!28594 (arr!13733 (Array (_ BitVec 32) (_ BitVec 64))) (size!14085 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28593)

(declare-datatypes ((List!8321 0))(
  ( (Nil!8318) (Cons!8317 (h!9173 (_ BitVec 64)) (t!14271 List!8321)) )
))
(declare-fun arrayNoDuplicates!0 (array!28593 (_ BitVec 32) List!8321) Bool)

(assert (=> b!461051 (= res!275824 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8318))))

(declare-fun b!461052 () Bool)

(declare-fun res!275825 () Bool)

(declare-fun e!268926 () Bool)

(assert (=> b!461052 (=> (not res!275825) (not e!268926))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!461052 (= res!275825 (bvsle from!863 i!563))))

(declare-fun b!461053 () Bool)

(declare-fun res!275823 () Bool)

(assert (=> b!461053 (=> (not res!275823) (not e!268926))))

(declare-fun lt!208894 () array!28593)

(assert (=> b!461053 (= res!275823 (arrayNoDuplicates!0 lt!208894 #b00000000000000000000000000000000 Nil!8318))))

(declare-fun mapNonEmpty!20275 () Bool)

(declare-fun tp!39069 () Bool)

(declare-fun e!268921 () Bool)

(assert (=> mapNonEmpty!20275 (= mapRes!20275 (and tp!39069 e!268921))))

(declare-datatypes ((V!17659 0))(
  ( (V!17660 (val!6252 Int)) )
))
(declare-datatypes ((ValueCell!5864 0))(
  ( (ValueCellFull!5864 (v!8530 V!17659)) (EmptyCell!5864) )
))
(declare-datatypes ((array!28595 0))(
  ( (array!28596 (arr!13734 (Array (_ BitVec 32) ValueCell!5864)) (size!14086 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28595)

(declare-fun mapValue!20275 () ValueCell!5864)

(declare-fun mapRest!20275 () (Array (_ BitVec 32) ValueCell!5864))

(declare-fun mapKey!20275 () (_ BitVec 32))

(assert (=> mapNonEmpty!20275 (= (arr!13734 _values!549) (store mapRest!20275 mapKey!20275 mapValue!20275))))

(declare-fun b!461055 () Bool)

(declare-fun e!268924 () Bool)

(assert (=> b!461055 (= e!268926 e!268924)))

(declare-fun res!275822 () Bool)

(assert (=> b!461055 (=> (not res!275822) (not e!268924))))

(assert (=> b!461055 (= res!275822 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun minValue!515 () V!17659)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((tuple2!8218 0))(
  ( (tuple2!8219 (_1!4119 (_ BitVec 64)) (_2!4119 V!17659)) )
))
(declare-datatypes ((List!8322 0))(
  ( (Nil!8319) (Cons!8318 (h!9174 tuple2!8218) (t!14272 List!8322)) )
))
(declare-datatypes ((ListLongMap!7145 0))(
  ( (ListLongMap!7146 (toList!3588 List!8322)) )
))
(declare-fun lt!208891 () ListLongMap!7145)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun lt!208893 () array!28595)

(declare-fun zeroValue!515 () V!17659)

(declare-fun getCurrentListMapNoExtraKeys!1756 (array!28593 array!28595 (_ BitVec 32) (_ BitVec 32) V!17659 V!17659 (_ BitVec 32) Int) ListLongMap!7145)

(assert (=> b!461055 (= lt!208891 (getCurrentListMapNoExtraKeys!1756 lt!208894 lt!208893 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!17659)

(assert (=> b!461055 (= lt!208893 (array!28596 (store (arr!13734 _values!549) i!563 (ValueCellFull!5864 v!412)) (size!14086 _values!549)))))

(declare-fun lt!208892 () ListLongMap!7145)

(assert (=> b!461055 (= lt!208892 (getCurrentListMapNoExtraKeys!1756 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!461056 () Bool)

(declare-fun res!275821 () Bool)

(assert (=> b!461056 (=> (not res!275821) (not e!268922))))

(assert (=> b!461056 (= res!275821 (or (= (select (arr!13733 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13733 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!461057 () Bool)

(assert (=> b!461057 (= e!268922 e!268926)))

(declare-fun res!275819 () Bool)

(assert (=> b!461057 (=> (not res!275819) (not e!268926))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28593 (_ BitVec 32)) Bool)

(assert (=> b!461057 (= res!275819 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!208894 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!461057 (= lt!208894 (array!28594 (store (arr!13733 _keys!709) i!563 k!794) (size!14085 _keys!709)))))

(declare-fun b!461058 () Bool)

(declare-fun res!275815 () Bool)

(assert (=> b!461058 (=> (not res!275815) (not e!268922))))

(declare-fun arrayContainsKey!0 (array!28593 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!461058 (= res!275815 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!461059 () Bool)

(declare-fun e!268925 () Bool)

(assert (=> b!461059 (= e!268925 (and e!268920 mapRes!20275))))

(declare-fun condMapEmpty!20275 () Bool)

(declare-fun mapDefault!20275 () ValueCell!5864)

