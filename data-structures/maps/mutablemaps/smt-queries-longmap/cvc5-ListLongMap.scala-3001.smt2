; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42332 () Bool)

(assert start!42332)

(declare-fun b_free!11815 () Bool)

(declare-fun b_next!11815 () Bool)

(assert (=> start!42332 (= b_free!11815 (not b_next!11815))))

(declare-fun tp!41476 () Bool)

(declare-fun b_and!20279 () Bool)

(assert (=> start!42332 (= tp!41476 b_and!20279)))

(declare-fun b!472009 () Bool)

(declare-fun res!282016 () Bool)

(declare-fun e!276735 () Bool)

(assert (=> b!472009 (=> (not res!282016) (not e!276735))))

(declare-datatypes ((array!30211 0))(
  ( (array!30212 (arr!14523 (Array (_ BitVec 32) (_ BitVec 64))) (size!14875 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30211)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30211 (_ BitVec 32)) Bool)

(assert (=> b!472009 (= res!282016 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!472010 () Bool)

(declare-fun e!276739 () Bool)

(declare-fun e!276736 () Bool)

(declare-fun mapRes!21574 () Bool)

(assert (=> b!472010 (= e!276739 (and e!276736 mapRes!21574))))

(declare-fun condMapEmpty!21574 () Bool)

(declare-datatypes ((V!18763 0))(
  ( (V!18764 (val!6666 Int)) )
))
(declare-datatypes ((ValueCell!6278 0))(
  ( (ValueCellFull!6278 (v!8953 V!18763)) (EmptyCell!6278) )
))
(declare-datatypes ((array!30213 0))(
  ( (array!30214 (arr!14524 (Array (_ BitVec 32) ValueCell!6278)) (size!14876 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30213)

(declare-fun mapDefault!21574 () ValueCell!6278)

