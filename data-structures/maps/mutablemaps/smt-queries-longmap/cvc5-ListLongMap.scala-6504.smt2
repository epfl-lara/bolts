; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82892 () Bool)

(assert start!82892)

(declare-fun b_free!18991 () Bool)

(declare-fun b_next!18991 () Bool)

(assert (=> start!82892 (= b_free!18991 (not b_next!18991))))

(declare-fun tp!66103 () Bool)

(declare-fun b_and!30497 () Bool)

(assert (=> start!82892 (= tp!66103 b_and!30497)))

(declare-fun b!966555 () Bool)

(declare-fun res!647095 () Bool)

(declare-fun e!544893 () Bool)

(assert (=> b!966555 (=> (not res!647095) (not e!544893))))

(declare-datatypes ((array!59661 0))(
  ( (array!59662 (arr!28695 (Array (_ BitVec 32) (_ BitVec 64))) (size!29175 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59661)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!966555 (= res!647095 (validKeyInArray!0 (select (arr!28695 _keys!1686) i!803)))))

(declare-fun b!966556 () Bool)

(declare-fun res!647097 () Bool)

(assert (=> b!966556 (=> (not res!647097) (not e!544893))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!34049 0))(
  ( (V!34050 (val!10950 Int)) )
))
(declare-datatypes ((ValueCell!10418 0))(
  ( (ValueCellFull!10418 (v!13508 V!34049)) (EmptyCell!10418) )
))
(declare-datatypes ((array!59663 0))(
  ( (array!59664 (arr!28696 (Array (_ BitVec 32) ValueCell!10418)) (size!29176 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59663)

(declare-fun mask!2110 () (_ BitVec 32))

(assert (=> b!966556 (= res!647097 (and (= (size!29176 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29175 _keys!1686) (size!29176 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!966557 () Bool)

(declare-fun res!647096 () Bool)

(assert (=> b!966557 (=> (not res!647096) (not e!544893))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59661 (_ BitVec 32)) Bool)

(assert (=> b!966557 (= res!647096 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!966558 () Bool)

(declare-fun res!647098 () Bool)

(assert (=> b!966558 (=> (not res!647098) (not e!544893))))

(declare-datatypes ((List!20045 0))(
  ( (Nil!20042) (Cons!20041 (h!21203 (_ BitVec 64)) (t!28416 List!20045)) )
))
(declare-fun arrayNoDuplicates!0 (array!59661 (_ BitVec 32) List!20045) Bool)

(assert (=> b!966558 (= res!647098 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!20042))))

(declare-fun b!966559 () Bool)

(declare-fun e!544894 () Bool)

(declare-fun e!544892 () Bool)

(declare-fun mapRes!34693 () Bool)

(assert (=> b!966559 (= e!544894 (and e!544892 mapRes!34693))))

(declare-fun condMapEmpty!34693 () Bool)

(declare-fun mapDefault!34693 () ValueCell!10418)

