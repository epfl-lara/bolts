; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37142 () Bool)

(assert start!37142)

(declare-fun b_free!8261 () Bool)

(declare-fun b_next!8261 () Bool)

(assert (=> start!37142 (= b_free!8261 (not b_next!8261))))

(declare-fun tp!29499 () Bool)

(declare-fun b_and!15521 () Bool)

(assert (=> start!37142 (= tp!29499 b_and!15521)))

(declare-fun b!374112 () Bool)

(declare-fun res!211002 () Bool)

(declare-fun e!228026 () Bool)

(assert (=> b!374112 (=> (not res!211002) (not e!228026))))

(declare-datatypes ((array!21723 0))(
  ( (array!21724 (arr!10327 (Array (_ BitVec 32) (_ BitVec 64))) (size!10679 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21723)

(declare-datatypes ((List!5830 0))(
  ( (Nil!5827) (Cons!5826 (h!6682 (_ BitVec 64)) (t!10988 List!5830)) )
))
(declare-fun arrayNoDuplicates!0 (array!21723 (_ BitVec 32) List!5830) Bool)

(assert (=> b!374112 (= res!211002 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5827))))

(declare-fun b!374113 () Bool)

(declare-fun res!210999 () Bool)

(assert (=> b!374113 (=> (not res!210999) (not e!228026))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!21723 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!374113 (= res!210999 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!374114 () Bool)

(declare-fun res!210998 () Bool)

(assert (=> b!374114 (=> (not res!210998) (not e!228026))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!374114 (= res!210998 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10679 _keys!658))))))

(declare-fun b!374115 () Bool)

(declare-fun res!210994 () Bool)

(declare-fun e!228022 () Bool)

(assert (=> b!374115 (=> (not res!210994) (not e!228022))))

(declare-fun lt!172427 () array!21723)

(assert (=> b!374115 (= res!210994 (arrayNoDuplicates!0 lt!172427 #b00000000000000000000000000000000 Nil!5827))))

(declare-fun b!374116 () Bool)

(declare-fun res!211003 () Bool)

(assert (=> b!374116 (=> (not res!211003) (not e!228026))))

(assert (=> b!374116 (= res!211003 (or (= (select (arr!10327 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10327 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!374117 () Bool)

(assert (=> b!374117 (= e!228026 e!228022)))

(declare-fun res!211001 () Bool)

(assert (=> b!374117 (=> (not res!211001) (not e!228022))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21723 (_ BitVec 32)) Bool)

(assert (=> b!374117 (= res!211001 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!172427 mask!970))))

(assert (=> b!374117 (= lt!172427 (array!21724 (store (arr!10327 _keys!658) i!548 k!778) (size!10679 _keys!658)))))

(declare-fun b!374118 () Bool)

(declare-fun e!228024 () Bool)

(declare-fun tp_is_empty!8909 () Bool)

(assert (=> b!374118 (= e!228024 tp_is_empty!8909)))

(declare-fun b!374119 () Bool)

(declare-fun e!228027 () Bool)

(declare-fun mapRes!14928 () Bool)

(assert (=> b!374119 (= e!228027 (and e!228024 mapRes!14928))))

(declare-fun condMapEmpty!14928 () Bool)

(declare-datatypes ((V!12983 0))(
  ( (V!12984 (val!4499 Int)) )
))
(declare-datatypes ((ValueCell!4111 0))(
  ( (ValueCellFull!4111 (v!6692 V!12983)) (EmptyCell!4111) )
))
(declare-datatypes ((array!21725 0))(
  ( (array!21726 (arr!10328 (Array (_ BitVec 32) ValueCell!4111)) (size!10680 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21725)

(declare-fun mapDefault!14928 () ValueCell!4111)

