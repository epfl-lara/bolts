; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35120 () Bool)

(assert start!35120)

(declare-fun b_free!7757 () Bool)

(declare-fun b_next!7757 () Bool)

(assert (=> start!35120 (= b_free!7757 (not b_next!7757))))

(declare-fun tp!26856 () Bool)

(declare-fun b_and!15009 () Bool)

(assert (=> start!35120 (= tp!26856 b_and!15009)))

(declare-fun b!351837 () Bool)

(declare-fun e!215466 () Bool)

(declare-fun tp_is_empty!7709 () Bool)

(assert (=> b!351837 (= e!215466 tp_is_empty!7709)))

(declare-fun mapNonEmpty!13041 () Bool)

(declare-fun mapRes!13041 () Bool)

(declare-fun tp!26855 () Bool)

(assert (=> mapNonEmpty!13041 (= mapRes!13041 (and tp!26855 e!215466))))

(declare-fun mapKey!13041 () (_ BitVec 32))

(declare-datatypes ((V!11255 0))(
  ( (V!11256 (val!3899 Int)) )
))
(declare-datatypes ((ValueCell!3511 0))(
  ( (ValueCellFull!3511 (v!6084 V!11255)) (EmptyCell!3511) )
))
(declare-datatypes ((array!18963 0))(
  ( (array!18964 (arr!8982 (Array (_ BitVec 32) ValueCell!3511)) (size!9334 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18963)

(declare-fun mapRest!13041 () (Array (_ BitVec 32) ValueCell!3511))

(declare-fun mapValue!13041 () ValueCell!3511)

(assert (=> mapNonEmpty!13041 (= (arr!8982 _values!1525) (store mapRest!13041 mapKey!13041 mapValue!13041))))

(declare-fun b!351839 () Bool)

(declare-fun res!195189 () Bool)

(declare-fun e!215464 () Bool)

(assert (=> b!351839 (=> (not res!195189) (not e!215464))))

(declare-datatypes ((array!18965 0))(
  ( (array!18966 (arr!8983 (Array (_ BitVec 32) (_ BitVec 64))) (size!9335 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18965)

(declare-datatypes ((List!5257 0))(
  ( (Nil!5254) (Cons!5253 (h!6109 (_ BitVec 64)) (t!10407 List!5257)) )
))
(declare-fun arrayNoDuplicates!0 (array!18965 (_ BitVec 32) List!5257) Bool)

(assert (=> b!351839 (= res!195189 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5254))))

(declare-fun b!351840 () Bool)

(declare-fun res!195192 () Bool)

(assert (=> b!351840 (=> (not res!195192) (not e!215464))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun zeroValue!1467 () V!11255)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!11255)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((tuple2!5620 0))(
  ( (tuple2!5621 (_1!2820 (_ BitVec 64)) (_2!2820 V!11255)) )
))
(declare-datatypes ((List!5258 0))(
  ( (Nil!5255) (Cons!5254 (h!6110 tuple2!5620) (t!10408 List!5258)) )
))
(declare-datatypes ((ListLongMap!4547 0))(
  ( (ListLongMap!4548 (toList!2289 List!5258)) )
))
(declare-fun contains!2356 (ListLongMap!4547 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1806 (array!18965 array!18963 (_ BitVec 32) (_ BitVec 32) V!11255 V!11255 (_ BitVec 32) Int) ListLongMap!4547)

(assert (=> b!351840 (= res!195192 (not (contains!2356 (getCurrentListMap!1806 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!351841 () Bool)

(declare-fun e!215465 () Bool)

(assert (=> b!351841 (= e!215464 e!215465)))

(declare-fun res!195191 () Bool)

(assert (=> b!351841 (=> (not res!195191) (not e!215465))))

(declare-datatypes ((SeekEntryResult!3453 0))(
  ( (MissingZero!3453 (index!15991 (_ BitVec 32))) (Found!3453 (index!15992 (_ BitVec 32))) (Intermediate!3453 (undefined!4265 Bool) (index!15993 (_ BitVec 32)) (x!35012 (_ BitVec 32))) (Undefined!3453) (MissingVacant!3453 (index!15994 (_ BitVec 32))) )
))
(declare-fun lt!165001 () SeekEntryResult!3453)

(assert (=> b!351841 (= res!195191 (and (not (is-Found!3453 lt!165001)) (not (is-MissingZero!3453 lt!165001)) (is-MissingVacant!3453 lt!165001)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18965 (_ BitVec 32)) SeekEntryResult!3453)

(assert (=> b!351841 (= lt!165001 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!351842 () Bool)

(assert (=> b!351842 (= e!215465 false)))

(declare-datatypes ((Unit!10878 0))(
  ( (Unit!10879) )
))
(declare-fun lt!165002 () Unit!10878)

(declare-fun e!215467 () Unit!10878)

(assert (=> b!351842 (= lt!165002 e!215467)))

(declare-fun c!53435 () Bool)

(declare-fun arrayContainsKey!0 (array!18965 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!351842 (= c!53435 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!351843 () Bool)

(declare-fun res!195193 () Bool)

(assert (=> b!351843 (=> (not res!195193) (not e!215464))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!351843 (= res!195193 (validKeyInArray!0 k!1348))))

(declare-fun b!351838 () Bool)

(declare-fun Unit!10880 () Unit!10878)

(assert (=> b!351838 (= e!215467 Unit!10880)))

(declare-fun lt!165003 () Unit!10878)

(declare-fun lemmaArrayContainsKeyThenInListMap!330 (array!18965 array!18963 (_ BitVec 32) (_ BitVec 32) V!11255 V!11255 (_ BitVec 64) (_ BitVec 32) Int) Unit!10878)

(declare-fun arrayScanForKey!0 (array!18965 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!351838 (= lt!165003 (lemmaArrayContainsKeyThenInListMap!330 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k!1348 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!351838 false))

(declare-fun res!195194 () Bool)

(assert (=> start!35120 (=> (not res!195194) (not e!215464))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35120 (= res!195194 (validMask!0 mask!2385))))

(assert (=> start!35120 e!215464))

(assert (=> start!35120 true))

(assert (=> start!35120 tp_is_empty!7709))

(assert (=> start!35120 tp!26856))

(declare-fun e!215469 () Bool)

(declare-fun array_inv!6620 (array!18963) Bool)

(assert (=> start!35120 (and (array_inv!6620 _values!1525) e!215469)))

(declare-fun array_inv!6621 (array!18965) Bool)

(assert (=> start!35120 (array_inv!6621 _keys!1895)))

(declare-fun b!351844 () Bool)

(declare-fun e!215463 () Bool)

(assert (=> b!351844 (= e!215469 (and e!215463 mapRes!13041))))

(declare-fun condMapEmpty!13041 () Bool)

(declare-fun mapDefault!13041 () ValueCell!3511)

