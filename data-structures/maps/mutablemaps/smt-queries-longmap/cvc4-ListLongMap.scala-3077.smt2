; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43366 () Bool)

(assert start!43366)

(declare-fun b_free!12185 () Bool)

(declare-fun b_next!12185 () Bool)

(assert (=> start!43366 (= b_free!12185 (not b_next!12185))))

(declare-fun tp!42832 () Bool)

(declare-fun b_and!20959 () Bool)

(assert (=> start!43366 (= tp!42832 b_and!20959)))

(declare-fun res!286378 () Bool)

(declare-fun e!282496 () Bool)

(assert (=> start!43366 (=> (not res!286378) (not e!282496))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43366 (= res!286378 (validMask!0 mask!2352))))

(assert (=> start!43366 e!282496))

(assert (=> start!43366 true))

(declare-fun tp_is_empty!13697 () Bool)

(assert (=> start!43366 tp_is_empty!13697))

(declare-datatypes ((V!19333 0))(
  ( (V!19334 (val!6896 Int)) )
))
(declare-datatypes ((ValueCell!6487 0))(
  ( (ValueCellFull!6487 (v!9183 V!19333)) (EmptyCell!6487) )
))
(declare-datatypes ((array!31031 0))(
  ( (array!31032 (arr!14917 (Array (_ BitVec 32) ValueCell!6487)) (size!15275 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31031)

(declare-fun e!282494 () Bool)

(declare-fun array_inv!10748 (array!31031) Bool)

(assert (=> start!43366 (and (array_inv!10748 _values!1516) e!282494)))

(assert (=> start!43366 tp!42832))

(declare-datatypes ((array!31033 0))(
  ( (array!31034 (arr!14918 (Array (_ BitVec 32) (_ BitVec 64))) (size!15276 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31033)

(declare-fun array_inv!10749 (array!31033) Bool)

(assert (=> start!43366 (array_inv!10749 _keys!1874)))

(declare-fun b!480069 () Bool)

(declare-fun res!286380 () Bool)

(assert (=> b!480069 (=> (not res!286380) (not e!282496))))

(declare-fun k!1332 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!480069 (= res!286380 (validKeyInArray!0 k!1332))))

(declare-fun b!480070 () Bool)

(declare-fun res!286375 () Bool)

(assert (=> b!480070 (=> (not res!286375) (not e!282496))))

(declare-datatypes ((List!9160 0))(
  ( (Nil!9157) (Cons!9156 (h!10012 (_ BitVec 64)) (t!15378 List!9160)) )
))
(declare-fun arrayNoDuplicates!0 (array!31033 (_ BitVec 32) List!9160) Bool)

(assert (=> b!480070 (= res!286375 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9157))))

(declare-fun b!480071 () Bool)

(declare-fun e!282491 () Bool)

(declare-fun mapRes!22249 () Bool)

(assert (=> b!480071 (= e!282494 (and e!282491 mapRes!22249))))

(declare-fun condMapEmpty!22249 () Bool)

(declare-fun mapDefault!22249 () ValueCell!6487)

