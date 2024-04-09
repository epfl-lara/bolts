; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4084 () Bool)

(assert start!4084)

(declare-fun b_free!991 () Bool)

(declare-fun b_next!991 () Bool)

(assert (=> start!4084 (= b_free!991 (not b_next!991))))

(declare-fun tp!4393 () Bool)

(declare-fun b_and!1803 () Bool)

(assert (=> start!4084 (= tp!4393 b_and!1803)))

(declare-fun b!30284 () Bool)

(declare-fun res!18216 () Bool)

(declare-fun e!19459 () Bool)

(assert (=> b!30284 (=> (not res!18216) (not e!19459))))

(declare-datatypes ((array!1907 0))(
  ( (array!1908 (arr!907 (Array (_ BitVec 32) (_ BitVec 64))) (size!1008 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1907)

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!1907 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!30284 (= res!18216 (not (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000)))))

(declare-fun b!30285 () Bool)

(declare-fun res!18214 () Bool)

(assert (=> b!30285 (=> (not res!18214) (not e!19459))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1907 (_ BitVec 32)) Bool)

(assert (=> b!30285 (= res!18214 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun mapIsEmpty!1546 () Bool)

(declare-fun mapRes!1546 () Bool)

(assert (=> mapIsEmpty!1546 mapRes!1546))

(declare-fun b!30286 () Bool)

(declare-fun e!19460 () Bool)

(declare-fun tp_is_empty!1345 () Bool)

(assert (=> b!30286 (= e!19460 tp_is_empty!1345)))

(declare-fun b!30287 () Bool)

(declare-fun e!19461 () Bool)

(assert (=> b!30287 (= e!19461 tp_is_empty!1345)))

(declare-fun b!30288 () Bool)

(declare-fun res!18219 () Bool)

(assert (=> b!30288 (=> (not res!18219) (not e!19459))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!30288 (= res!18219 (validKeyInArray!0 k!1304))))

(declare-fun b!30289 () Bool)

(declare-fun res!18220 () Bool)

(assert (=> b!30289 (=> (not res!18220) (not e!19459))))

(declare-datatypes ((List!745 0))(
  ( (Nil!742) (Cons!741 (h!1308 (_ BitVec 64)) (t!3440 List!745)) )
))
(declare-fun arrayNoDuplicates!0 (array!1907 (_ BitVec 32) List!745) Bool)

(assert (=> b!30289 (= res!18220 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!742))))

(declare-fun b!30290 () Bool)

(declare-fun res!18215 () Bool)

(assert (=> b!30290 (=> (not res!18215) (not e!19459))))

(declare-datatypes ((V!1619 0))(
  ( (V!1620 (val!699 Int)) )
))
(declare-datatypes ((ValueCell!473 0))(
  ( (ValueCellFull!473 (v!1788 V!1619)) (EmptyCell!473) )
))
(declare-datatypes ((array!1909 0))(
  ( (array!1910 (arr!908 (Array (_ BitVec 32) ValueCell!473)) (size!1009 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1909)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(assert (=> b!30290 (= res!18215 (and (= (size!1009 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1008 _keys!1833) (size!1009 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!1546 () Bool)

(declare-fun tp!4392 () Bool)

(assert (=> mapNonEmpty!1546 (= mapRes!1546 (and tp!4392 e!19461))))

(declare-fun mapRest!1546 () (Array (_ BitVec 32) ValueCell!473))

(declare-fun mapKey!1546 () (_ BitVec 32))

(declare-fun mapValue!1546 () ValueCell!473)

(assert (=> mapNonEmpty!1546 (= (arr!908 _values!1501) (store mapRest!1546 mapKey!1546 mapValue!1546))))

(declare-fun b!30291 () Bool)

(declare-fun e!19458 () Bool)

(assert (=> b!30291 (= e!19458 (and e!19460 mapRes!1546))))

(declare-fun condMapEmpty!1546 () Bool)

(declare-fun mapDefault!1546 () ValueCell!473)

