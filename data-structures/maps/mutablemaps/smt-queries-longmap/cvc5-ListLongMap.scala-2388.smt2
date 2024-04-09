; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37798 () Bool)

(assert start!37798)

(declare-fun b_free!8893 () Bool)

(declare-fun b_next!8893 () Bool)

(assert (=> start!37798 (= b_free!8893 (not b_next!8893))))

(declare-fun tp!31430 () Bool)

(declare-fun b_and!16153 () Bool)

(assert (=> start!37798 (= tp!31430 b_and!16153)))

(declare-fun b!387923 () Bool)

(declare-fun e!235098 () Bool)

(declare-fun e!235099 () Bool)

(assert (=> b!387923 (= e!235098 e!235099)))

(declare-fun res!221852 () Bool)

(assert (=> b!387923 (=> (not res!221852) (not e!235099))))

(declare-datatypes ((array!22999 0))(
  ( (array!23000 (arr!10965 (Array (_ BitVec 32) (_ BitVec 64))) (size!11317 (_ BitVec 32))) )
))
(declare-fun lt!182178 () array!22999)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22999 (_ BitVec 32)) Bool)

(assert (=> b!387923 (= res!221852 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!182178 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun _keys!658 () array!22999)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!387923 (= lt!182178 (array!23000 (store (arr!10965 _keys!658) i!548 k!778) (size!11317 _keys!658)))))

(declare-fun mapNonEmpty!15912 () Bool)

(declare-fun mapRes!15912 () Bool)

(declare-fun tp!31431 () Bool)

(declare-fun e!235096 () Bool)

(assert (=> mapNonEmpty!15912 (= mapRes!15912 (and tp!31431 e!235096))))

(declare-fun mapKey!15912 () (_ BitVec 32))

(declare-datatypes ((V!13859 0))(
  ( (V!13860 (val!4827 Int)) )
))
(declare-datatypes ((ValueCell!4439 0))(
  ( (ValueCellFull!4439 (v!7020 V!13859)) (EmptyCell!4439) )
))
(declare-datatypes ((array!23001 0))(
  ( (array!23002 (arr!10966 (Array (_ BitVec 32) ValueCell!4439)) (size!11318 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23001)

(declare-fun mapValue!15912 () ValueCell!4439)

(declare-fun mapRest!15912 () (Array (_ BitVec 32) ValueCell!4439))

(assert (=> mapNonEmpty!15912 (= (arr!10966 _values!506) (store mapRest!15912 mapKey!15912 mapValue!15912))))

(declare-fun b!387924 () Bool)

(declare-fun res!221857 () Bool)

(assert (=> b!387924 (=> (not res!221857) (not e!235098))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!387924 (= res!221857 (validKeyInArray!0 k!778))))

(declare-fun b!387925 () Bool)

(declare-fun res!221853 () Bool)

(assert (=> b!387925 (=> (not res!221853) (not e!235099))))

(declare-datatypes ((List!6314 0))(
  ( (Nil!6311) (Cons!6310 (h!7166 (_ BitVec 64)) (t!11472 List!6314)) )
))
(declare-fun arrayNoDuplicates!0 (array!22999 (_ BitVec 32) List!6314) Bool)

(assert (=> b!387925 (= res!221853 (arrayNoDuplicates!0 lt!182178 #b00000000000000000000000000000000 Nil!6311))))

(declare-fun b!387926 () Bool)

(declare-fun e!235100 () Bool)

(declare-fun e!235101 () Bool)

(assert (=> b!387926 (= e!235100 (and e!235101 mapRes!15912))))

(declare-fun condMapEmpty!15912 () Bool)

(declare-fun mapDefault!15912 () ValueCell!4439)

