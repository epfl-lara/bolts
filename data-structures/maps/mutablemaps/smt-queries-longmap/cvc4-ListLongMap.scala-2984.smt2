; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42206 () Bool)

(assert start!42206)

(declare-fun b_free!11717 () Bool)

(declare-fun b_next!11717 () Bool)

(assert (=> start!42206 (= b_free!11717 (not b_next!11717))))

(declare-fun tp!41176 () Bool)

(declare-fun b_and!20165 () Bool)

(assert (=> start!42206 (= tp!41176 b_and!20165)))

(declare-fun b!470799 () Bool)

(declare-fun res!281353 () Bool)

(declare-fun e!275882 () Bool)

(assert (=> b!470799 (=> (not res!281353) (not e!275882))))

(declare-datatypes ((array!30019 0))(
  ( (array!30020 (arr!14429 (Array (_ BitVec 32) (_ BitVec 64))) (size!14781 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30019)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30019 (_ BitVec 32)) Bool)

(assert (=> b!470799 (= res!281353 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!470800 () Bool)

(declare-fun e!275881 () Bool)

(declare-fun e!275883 () Bool)

(declare-fun mapRes!21421 () Bool)

(assert (=> b!470800 (= e!275881 (and e!275883 mapRes!21421))))

(declare-fun condMapEmpty!21421 () Bool)

(declare-datatypes ((V!18631 0))(
  ( (V!18632 (val!6617 Int)) )
))
(declare-datatypes ((ValueCell!6229 0))(
  ( (ValueCellFull!6229 (v!8904 V!18631)) (EmptyCell!6229) )
))
(declare-datatypes ((array!30021 0))(
  ( (array!30022 (arr!14430 (Array (_ BitVec 32) ValueCell!6229)) (size!14782 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30021)

(declare-fun mapDefault!21421 () ValueCell!6229)

