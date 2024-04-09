; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82946 () Bool)

(assert start!82946)

(declare-fun b_free!19045 () Bool)

(declare-fun b_next!19045 () Bool)

(assert (=> start!82946 (= b_free!19045 (not b_next!19045))))

(declare-fun tp!66264 () Bool)

(declare-fun b_and!30551 () Bool)

(assert (=> start!82946 (= tp!66264 b_and!30551)))

(declare-fun b!967431 () Bool)

(declare-fun res!647735 () Bool)

(declare-fun e!545298 () Bool)

(assert (=> b!967431 (=> (not res!647735) (not e!545298))))

(declare-datatypes ((array!59761 0))(
  ( (array!59762 (arr!28745 (Array (_ BitVec 32) (_ BitVec 64))) (size!29225 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59761)

(declare-datatypes ((List!20082 0))(
  ( (Nil!20079) (Cons!20078 (h!21240 (_ BitVec 64)) (t!28453 List!20082)) )
))
(declare-fun arrayNoDuplicates!0 (array!59761 (_ BitVec 32) List!20082) Bool)

(assert (=> b!967431 (= res!647735 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!20079))))

(declare-fun b!967432 () Bool)

(declare-fun res!647733 () Bool)

(assert (=> b!967432 (=> (not res!647733) (not e!545298))))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!967432 (= res!647733 (bvsgt from!2084 newFrom!159))))

(declare-fun mapNonEmpty!34774 () Bool)

(declare-fun mapRes!34774 () Bool)

(declare-fun tp!66265 () Bool)

(declare-fun e!545297 () Bool)

(assert (=> mapNonEmpty!34774 (= mapRes!34774 (and tp!66265 e!545297))))

(declare-datatypes ((V!34121 0))(
  ( (V!34122 (val!10977 Int)) )
))
(declare-datatypes ((ValueCell!10445 0))(
  ( (ValueCellFull!10445 (v!13535 V!34121)) (EmptyCell!10445) )
))
(declare-fun mapValue!34774 () ValueCell!10445)

(declare-datatypes ((array!59763 0))(
  ( (array!59764 (arr!28746 (Array (_ BitVec 32) ValueCell!10445)) (size!29226 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59763)

(declare-fun mapKey!34774 () (_ BitVec 32))

(declare-fun mapRest!34774 () (Array (_ BitVec 32) ValueCell!10445))

(assert (=> mapNonEmpty!34774 (= (arr!28746 _values!1400) (store mapRest!34774 mapKey!34774 mapValue!34774))))

(declare-fun b!967433 () Bool)

(declare-fun e!545296 () Bool)

(declare-fun e!545299 () Bool)

(assert (=> b!967433 (= e!545296 (and e!545299 mapRes!34774))))

(declare-fun condMapEmpty!34774 () Bool)

(declare-fun mapDefault!34774 () ValueCell!10445)

