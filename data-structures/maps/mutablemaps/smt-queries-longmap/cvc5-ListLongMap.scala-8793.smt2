; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107018 () Bool)

(assert start!107018)

(declare-fun b!1268439 () Bool)

(declare-fun e!722842 () Bool)

(declare-fun tp_is_empty!32671 () Bool)

(assert (=> b!1268439 (= e!722842 tp_is_empty!32671)))

(declare-fun res!844322 () Bool)

(declare-fun e!722843 () Bool)

(assert (=> start!107018 (=> (not res!844322) (not e!722843))))

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107018 (= res!844322 (validMask!0 mask!1730))))

(assert (=> start!107018 e!722843))

(declare-datatypes ((V!48755 0))(
  ( (V!48756 (val!16410 Int)) )
))
(declare-datatypes ((ValueCell!15482 0))(
  ( (ValueCellFull!15482 (v!19045 V!48755)) (EmptyCell!15482) )
))
(declare-datatypes ((array!82593 0))(
  ( (array!82594 (arr!39829 (Array (_ BitVec 32) ValueCell!15482)) (size!40366 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82593)

(declare-fun e!722839 () Bool)

(declare-fun array_inv!30263 (array!82593) Bool)

(assert (=> start!107018 (and (array_inv!30263 _values!1134) e!722839)))

(assert (=> start!107018 true))

(declare-datatypes ((array!82595 0))(
  ( (array!82596 (arr!39830 (Array (_ BitVec 32) (_ BitVec 64))) (size!40367 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82595)

(declare-fun array_inv!30264 (array!82595) Bool)

(assert (=> start!107018 (array_inv!30264 _keys!1364)))

(declare-fun b!1268440 () Bool)

(assert (=> b!1268440 (= e!722843 false)))

(declare-fun lt!574379 () Bool)

(declare-datatypes ((List!28561 0))(
  ( (Nil!28558) (Cons!28557 (h!29766 (_ BitVec 64)) (t!42097 List!28561)) )
))
(declare-fun arrayNoDuplicates!0 (array!82595 (_ BitVec 32) List!28561) Bool)

(assert (=> b!1268440 (= lt!574379 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28558))))

(declare-fun b!1268441 () Bool)

(declare-fun e!722841 () Bool)

(assert (=> b!1268441 (= e!722841 tp_is_empty!32671)))

(declare-fun b!1268442 () Bool)

(declare-fun res!844321 () Bool)

(assert (=> b!1268442 (=> (not res!844321) (not e!722843))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82595 (_ BitVec 32)) Bool)

(assert (=> b!1268442 (= res!844321 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun mapIsEmpty!50587 () Bool)

(declare-fun mapRes!50587 () Bool)

(assert (=> mapIsEmpty!50587 mapRes!50587))

(declare-fun b!1268443 () Bool)

(assert (=> b!1268443 (= e!722839 (and e!722842 mapRes!50587))))

(declare-fun condMapEmpty!50587 () Bool)

(declare-fun mapDefault!50587 () ValueCell!15482)

