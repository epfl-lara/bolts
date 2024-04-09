; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33650 () Bool)

(assert start!33650)

(declare-fun b_free!6877 () Bool)

(declare-fun b_next!6877 () Bool)

(assert (=> start!33650 (= b_free!6877 (not b_next!6877))))

(declare-fun tp!24134 () Bool)

(declare-fun b_and!14075 () Bool)

(assert (=> start!33650 (= tp!24134 b_and!14075)))

(declare-fun b!333772 () Bool)

(declare-fun res!183991 () Bool)

(declare-fun e!204935 () Bool)

(assert (=> b!333772 (=> (not res!183991) (not e!204935))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!10083 0))(
  ( (V!10084 (val!3459 Int)) )
))
(declare-datatypes ((ValueCell!3071 0))(
  ( (ValueCellFull!3071 (v!5617 V!10083)) (EmptyCell!3071) )
))
(declare-datatypes ((array!17249 0))(
  ( (array!17250 (arr!8152 (Array (_ BitVec 32) ValueCell!3071)) (size!8504 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17249)

(declare-datatypes ((array!17251 0))(
  ( (array!17252 (arr!8153 (Array (_ BitVec 32) (_ BitVec 64))) (size!8505 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17251)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!333772 (= res!183991 (and (= (size!8504 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8505 _keys!1895) (size!8504 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!333773 () Bool)

(declare-fun e!204932 () Bool)

(assert (=> b!333773 (= e!204932 (not true))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!17251 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!333773 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000)))

(declare-datatypes ((SeekEntryResult!3162 0))(
  ( (MissingZero!3162 (index!14827 (_ BitVec 32))) (Found!3162 (index!14828 (_ BitVec 32))) (Intermediate!3162 (undefined!3974 Bool) (index!14829 (_ BitVec 32)) (x!33283 (_ BitVec 32))) (Undefined!3162) (MissingVacant!3162 (index!14830 (_ BitVec 32))) )
))
(declare-fun lt!159399 () SeekEntryResult!3162)

(declare-datatypes ((Unit!10380 0))(
  ( (Unit!10381) )
))
(declare-fun lt!159398 () Unit!10380)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!17251 (_ BitVec 64) (_ BitVec 32)) Unit!10380)

(assert (=> b!333773 (= lt!159398 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 k!1348 (index!14828 lt!159399)))))

(declare-fun mapIsEmpty!11640 () Bool)

(declare-fun mapRes!11640 () Bool)

(assert (=> mapIsEmpty!11640 mapRes!11640))

(declare-fun b!333774 () Bool)

(declare-fun e!204931 () Bool)

(declare-fun e!204936 () Bool)

(assert (=> b!333774 (= e!204931 (and e!204936 mapRes!11640))))

(declare-fun condMapEmpty!11640 () Bool)

(declare-fun mapDefault!11640 () ValueCell!3071)

