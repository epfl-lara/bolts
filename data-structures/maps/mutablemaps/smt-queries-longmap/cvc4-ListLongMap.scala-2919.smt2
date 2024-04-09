; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41696 () Bool)

(assert start!41696)

(declare-fun b_free!11327 () Bool)

(declare-fun b_next!11327 () Bool)

(assert (=> start!41696 (= b_free!11327 (not b_next!11327))))

(declare-fun tp!39985 () Bool)

(declare-fun b_and!19701 () Bool)

(assert (=> start!41696 (= tp!39985 b_and!19701)))

(declare-fun b!465263 () Bool)

(declare-fun res!278181 () Bool)

(declare-fun e!271913 () Bool)

(assert (=> b!465263 (=> (not res!278181) (not e!271913))))

(declare-datatypes ((array!29251 0))(
  ( (array!29252 (arr!14052 (Array (_ BitVec 32) (_ BitVec 64))) (size!14404 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29251)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29251 (_ BitVec 32)) Bool)

(assert (=> b!465263 (= res!278181 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapNonEmpty!20815 () Bool)

(declare-fun mapRes!20815 () Bool)

(declare-fun tp!39984 () Bool)

(declare-fun e!271911 () Bool)

(assert (=> mapNonEmpty!20815 (= mapRes!20815 (and tp!39984 e!271911))))

(declare-datatypes ((V!18111 0))(
  ( (V!18112 (val!6422 Int)) )
))
(declare-datatypes ((ValueCell!6034 0))(
  ( (ValueCellFull!6034 (v!8705 V!18111)) (EmptyCell!6034) )
))
(declare-fun mapRest!20815 () (Array (_ BitVec 32) ValueCell!6034))

(declare-datatypes ((array!29253 0))(
  ( (array!29254 (arr!14053 (Array (_ BitVec 32) ValueCell!6034)) (size!14405 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29253)

(declare-fun mapValue!20815 () ValueCell!6034)

(declare-fun mapKey!20815 () (_ BitVec 32))

(assert (=> mapNonEmpty!20815 (= (arr!14053 _values!833) (store mapRest!20815 mapKey!20815 mapValue!20815))))

(declare-fun b!465264 () Bool)

(declare-fun e!271910 () Bool)

(declare-fun e!271909 () Bool)

(assert (=> b!465264 (= e!271910 (and e!271909 mapRes!20815))))

(declare-fun condMapEmpty!20815 () Bool)

(declare-fun mapDefault!20815 () ValueCell!6034)

