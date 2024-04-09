; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2996 () Bool)

(assert start!2996)

(declare-fun b!17522 () Bool)

(declare-fun b_free!605 () Bool)

(declare-fun b_next!605 () Bool)

(assert (=> b!17522 (= b_free!605 (not b_next!605))))

(declare-fun tp!3006 () Bool)

(declare-fun b_and!1255 () Bool)

(assert (=> b!17522 (= tp!3006 b_and!1255)))

(declare-fun b!17517 () Bool)

(declare-fun e!11001 () Bool)

(declare-fun tp_is_empty!869 () Bool)

(assert (=> b!17517 (= e!11001 tp_is_empty!869)))

(declare-fun b!17518 () Bool)

(declare-fun e!10993 () Bool)

(assert (=> b!17518 (= e!10993 false)))

(declare-fun lt!4560 () Bool)

(declare-datatypes ((V!983 0))(
  ( (V!984 (val!461 Int)) )
))
(declare-datatypes ((ValueCell!235 0))(
  ( (ValueCellFull!235 (v!1426 V!983)) (EmptyCell!235) )
))
(declare-datatypes ((array!935 0))(
  ( (array!936 (arr!449 (Array (_ BitVec 32) ValueCell!235)) (size!539 (_ BitVec 32))) )
))
(declare-datatypes ((array!937 0))(
  ( (array!938 (arr!450 (Array (_ BitVec 32) (_ BitVec 64))) (size!540 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!56 0))(
  ( (LongMapFixedSize!57 (defaultEntry!1639 Int) (mask!4556 (_ BitVec 32)) (extraKeys!1552 (_ BitVec 32)) (zeroValue!1575 V!983) (minValue!1575 V!983) (_size!60 (_ BitVec 32)) (_keys!3064 array!937) (_values!1636 array!935) (_vacant!60 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!56 0))(
  ( (Cell!57 (v!1427 LongMapFixedSize!56)) )
))
(declare-datatypes ((LongMap!56 0))(
  ( (LongMap!57 (underlying!39 Cell!56)) )
))
(declare-fun lt!4559 () LongMap!56)

(declare-fun key!682 () (_ BitVec 64))

(declare-datatypes ((tuple2!722 0))(
  ( (tuple2!723 (_1!362 (_ BitVec 64)) (_2!362 V!983)) )
))
(declare-datatypes ((List!533 0))(
  ( (Nil!530) (Cons!529 (h!1095 tuple2!722) (t!3174 List!533)) )
))
(declare-datatypes ((ListLongMap!517 0))(
  ( (ListLongMap!518 (toList!274 List!533)) )
))
(declare-fun contains!205 (ListLongMap!517 (_ BitVec 64)) Bool)

(declare-fun map!338 (LongMap!56) ListLongMap!517)

(assert (=> b!17518 (= lt!4560 (contains!205 (map!338 lt!4559) key!682))))

(declare-fun b!17519 () Bool)

(declare-fun e!10996 () Bool)

(declare-fun e!11002 () Bool)

(declare-fun mapRes!738 () Bool)

(assert (=> b!17519 (= e!10996 (and e!11002 mapRes!738))))

(declare-fun condMapEmpty!738 () Bool)

(declare-fun thiss!848 () LongMap!56)

(declare-fun mapDefault!738 () ValueCell!235)

