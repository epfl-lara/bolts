; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37088 () Bool)

(assert start!37088)

(declare-fun b_free!8207 () Bool)

(declare-fun b_next!8207 () Bool)

(assert (=> start!37088 (= b_free!8207 (not b_next!8207))))

(declare-fun tp!29336 () Bool)

(declare-fun b_and!15467 () Bool)

(assert (=> start!37088 (= tp!29336 b_and!15467)))

(declare-fun b!372905 () Bool)

(declare-fun e!227384 () Bool)

(declare-fun tp_is_empty!8855 () Bool)

(assert (=> b!372905 (= e!227384 tp_is_empty!8855)))

(declare-fun b!372906 () Bool)

(declare-fun res!210029 () Bool)

(declare-fun e!227382 () Bool)

(assert (=> b!372906 (=> (not res!210029) (not e!227382))))

(declare-datatypes ((V!12911 0))(
  ( (V!12912 (val!4472 Int)) )
))
(declare-datatypes ((tuple2!5912 0))(
  ( (tuple2!5913 (_1!2966 (_ BitVec 64)) (_2!2966 V!12911)) )
))
(declare-fun lt!171084 () tuple2!5912)

(declare-fun lt!171080 () tuple2!5912)

(declare-datatypes ((List!5787 0))(
  ( (Nil!5784) (Cons!5783 (h!6639 tuple2!5912) (t!10945 List!5787)) )
))
(declare-datatypes ((ListLongMap!4839 0))(
  ( (ListLongMap!4840 (toList!2435 List!5787)) )
))
(declare-fun lt!171088 () ListLongMap!4839)

(declare-fun lt!171079 () ListLongMap!4839)

(declare-fun +!776 (ListLongMap!4839 tuple2!5912) ListLongMap!4839)

(assert (=> b!372906 (= res!210029 (= lt!171088 (+!776 (+!776 lt!171079 lt!171080) lt!171084)))))

(declare-fun b!372908 () Bool)

(declare-fun res!210040 () Bool)

(declare-fun e!227388 () Bool)

(assert (=> b!372908 (=> (not res!210040) (not e!227388))))

(declare-datatypes ((array!21617 0))(
  ( (array!21618 (arr!10274 (Array (_ BitVec 32) (_ BitVec 64))) (size!10626 (_ BitVec 32))) )
))
(declare-fun lt!171081 () array!21617)

(declare-datatypes ((List!5788 0))(
  ( (Nil!5785) (Cons!5784 (h!6640 (_ BitVec 64)) (t!10946 List!5788)) )
))
(declare-fun arrayNoDuplicates!0 (array!21617 (_ BitVec 32) List!5788) Bool)

(assert (=> b!372908 (= res!210040 (arrayNoDuplicates!0 lt!171081 #b00000000000000000000000000000000 Nil!5785))))

(declare-fun b!372909 () Bool)

(declare-fun e!227386 () Bool)

(assert (=> b!372909 (= e!227386 true)))

(assert (=> b!372909 e!227382))

(declare-fun res!210037 () Bool)

(assert (=> b!372909 (=> (not res!210037) (not e!227382))))

(declare-fun lt!171087 () ListLongMap!4839)

(declare-fun lt!171082 () ListLongMap!4839)

(assert (=> b!372909 (= res!210037 (= lt!171087 (+!776 (+!776 lt!171082 lt!171080) lt!171084)))))

(declare-fun minValue!472 () V!12911)

(assert (=> b!372909 (= lt!171084 (tuple2!5913 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun zeroValue!472 () V!12911)

(assert (=> b!372909 (= lt!171080 (tuple2!5913 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!372910 () Bool)

(declare-fun res!210033 () Bool)

(declare-fun e!227383 () Bool)

(assert (=> b!372910 (=> (not res!210033) (not e!227383))))

(declare-fun _keys!658 () array!21617)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!372910 (= res!210033 (or (= (select (arr!10274 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10274 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!372911 () Bool)

(declare-fun e!227381 () Bool)

(declare-fun mapRes!14847 () Bool)

(assert (=> b!372911 (= e!227381 (and e!227384 mapRes!14847))))

(declare-fun condMapEmpty!14847 () Bool)

(declare-datatypes ((ValueCell!4084 0))(
  ( (ValueCellFull!4084 (v!6665 V!12911)) (EmptyCell!4084) )
))
(declare-datatypes ((array!21619 0))(
  ( (array!21620 (arr!10275 (Array (_ BitVec 32) ValueCell!4084)) (size!10627 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21619)

(declare-fun mapDefault!14847 () ValueCell!4084)

