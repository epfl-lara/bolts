; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40926 () Bool)

(assert start!40926)

(declare-fun b_free!10853 () Bool)

(declare-fun b_next!10853 () Bool)

(assert (=> start!40926 (= b_free!10853 (not b_next!10853))))

(declare-fun tp!38385 () Bool)

(declare-fun b_and!19013 () Bool)

(assert (=> start!40926 (= tp!38385 b_and!19013)))

(declare-fun b!454622 () Bool)

(declare-fun e!265928 () Bool)

(assert (=> b!454622 (= e!265928 false)))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((V!17359 0))(
  ( (V!17360 (val!6140 Int)) )
))
(declare-fun minValue!515 () V!17359)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5752 0))(
  ( (ValueCellFull!5752 (v!8402 V!17359)) (EmptyCell!5752) )
))
(declare-datatypes ((array!28151 0))(
  ( (array!28152 (arr!13516 (Array (_ BitVec 32) ValueCell!5752)) (size!13868 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28151)

(declare-fun zeroValue!515 () V!17359)

(declare-datatypes ((tuple2!8036 0))(
  ( (tuple2!8037 (_1!4028 (_ BitVec 64)) (_2!4028 V!17359)) )
))
(declare-datatypes ((List!8142 0))(
  ( (Nil!8139) (Cons!8138 (h!8994 tuple2!8036) (t!13978 List!8142)) )
))
(declare-datatypes ((ListLongMap!6963 0))(
  ( (ListLongMap!6964 (toList!3497 List!8142)) )
))
(declare-fun lt!206175 () ListLongMap!6963)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((array!28153 0))(
  ( (array!28154 (arr!13517 (Array (_ BitVec 32) (_ BitVec 64))) (size!13869 (_ BitVec 32))) )
))
(declare-fun lt!206173 () array!28153)

(declare-fun v!412 () V!17359)

(declare-fun getCurrentListMapNoExtraKeys!1673 (array!28153 array!28151 (_ BitVec 32) (_ BitVec 32) V!17359 V!17359 (_ BitVec 32) Int) ListLongMap!6963)

(assert (=> b!454622 (= lt!206175 (getCurrentListMapNoExtraKeys!1673 lt!206173 (array!28152 (store (arr!13516 _values!549) i!563 (ValueCellFull!5752 v!412)) (size!13868 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!206174 () ListLongMap!6963)

(declare-fun _keys!709 () array!28153)

(assert (=> b!454622 (= lt!206174 (getCurrentListMapNoExtraKeys!1673 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!454623 () Bool)

(declare-fun res!271033 () Bool)

(declare-fun e!265926 () Bool)

(assert (=> b!454623 (=> (not res!271033) (not e!265926))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!454623 (= res!271033 (validKeyInArray!0 k!794))))

(declare-fun b!454624 () Bool)

(declare-fun e!265924 () Bool)

(declare-fun tp_is_empty!12191 () Bool)

(assert (=> b!454624 (= e!265924 tp_is_empty!12191)))

(declare-fun b!454625 () Bool)

(declare-fun res!271023 () Bool)

(assert (=> b!454625 (=> (not res!271023) (not e!265926))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28153 (_ BitVec 32)) Bool)

(assert (=> b!454625 (= res!271023 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapIsEmpty!19927 () Bool)

(declare-fun mapRes!19927 () Bool)

(assert (=> mapIsEmpty!19927 mapRes!19927))

(declare-fun b!454626 () Bool)

(declare-fun res!271031 () Bool)

(assert (=> b!454626 (=> (not res!271031) (not e!265928))))

(declare-datatypes ((List!8143 0))(
  ( (Nil!8140) (Cons!8139 (h!8995 (_ BitVec 64)) (t!13979 List!8143)) )
))
(declare-fun arrayNoDuplicates!0 (array!28153 (_ BitVec 32) List!8143) Bool)

(assert (=> b!454626 (= res!271031 (arrayNoDuplicates!0 lt!206173 #b00000000000000000000000000000000 Nil!8140))))

(declare-fun mapNonEmpty!19927 () Bool)

(declare-fun tp!38386 () Bool)

(assert (=> mapNonEmpty!19927 (= mapRes!19927 (and tp!38386 e!265924))))

(declare-fun mapKey!19927 () (_ BitVec 32))

(declare-fun mapValue!19927 () ValueCell!5752)

(declare-fun mapRest!19927 () (Array (_ BitVec 32) ValueCell!5752))

(assert (=> mapNonEmpty!19927 (= (arr!13516 _values!549) (store mapRest!19927 mapKey!19927 mapValue!19927))))

(declare-fun b!454627 () Bool)

(declare-fun e!265925 () Bool)

(declare-fun e!265923 () Bool)

(assert (=> b!454627 (= e!265925 (and e!265923 mapRes!19927))))

(declare-fun condMapEmpty!19927 () Bool)

(declare-fun mapDefault!19927 () ValueCell!5752)

