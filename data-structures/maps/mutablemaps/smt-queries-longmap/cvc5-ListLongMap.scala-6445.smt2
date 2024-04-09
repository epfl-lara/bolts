; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82538 () Bool)

(assert start!82538)

(declare-fun b!961418 () Bool)

(declare-fun res!643552 () Bool)

(declare-fun e!542157 () Bool)

(assert (=> b!961418 (=> (not res!643552) (not e!542157))))

(declare-datatypes ((array!58985 0))(
  ( (array!58986 (arr!28357 (Array (_ BitVec 32) (_ BitVec 64))) (size!28837 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!58985)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58985 (_ BitVec 32)) Bool)

(assert (=> b!961418 (= res!643552 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!961419 () Bool)

(declare-fun res!643551 () Bool)

(assert (=> b!961419 (=> (not res!643551) (not e!542157))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!33577 0))(
  ( (V!33578 (val!10773 Int)) )
))
(declare-datatypes ((ValueCell!10241 0))(
  ( (ValueCellFull!10241 (v!13331 V!33577)) (EmptyCell!10241) )
))
(declare-datatypes ((array!58987 0))(
  ( (array!58988 (arr!28358 (Array (_ BitVec 32) ValueCell!10241)) (size!28838 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!58987)

(assert (=> b!961419 (= res!643551 (and (= (size!28838 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28837 _keys!1686) (size!28838 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!961420 () Bool)

(declare-fun e!542158 () Bool)

(declare-fun tp_is_empty!21445 () Bool)

(assert (=> b!961420 (= e!542158 tp_is_empty!21445)))

(declare-fun b!961421 () Bool)

(assert (=> b!961421 (= e!542157 false)))

(declare-fun lt!430722 () Bool)

(declare-datatypes ((List!19814 0))(
  ( (Nil!19811) (Cons!19810 (h!20972 (_ BitVec 64)) (t!28185 List!19814)) )
))
(declare-fun arrayNoDuplicates!0 (array!58985 (_ BitVec 32) List!19814) Bool)

(assert (=> b!961421 (= lt!430722 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19811))))

(declare-fun mapNonEmpty!34162 () Bool)

(declare-fun mapRes!34162 () Bool)

(declare-fun tp!65092 () Bool)

(assert (=> mapNonEmpty!34162 (= mapRes!34162 (and tp!65092 e!542158))))

(declare-fun mapKey!34162 () (_ BitVec 32))

(declare-fun mapRest!34162 () (Array (_ BitVec 32) ValueCell!10241))

(declare-fun mapValue!34162 () ValueCell!10241)

(assert (=> mapNonEmpty!34162 (= (arr!28358 _values!1400) (store mapRest!34162 mapKey!34162 mapValue!34162))))

(declare-fun res!643553 () Bool)

(assert (=> start!82538 (=> (not res!643553) (not e!542157))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82538 (= res!643553 (validMask!0 mask!2110))))

(assert (=> start!82538 e!542157))

(assert (=> start!82538 true))

(declare-fun e!542156 () Bool)

(declare-fun array_inv!21901 (array!58987) Bool)

(assert (=> start!82538 (and (array_inv!21901 _values!1400) e!542156)))

(declare-fun array_inv!21902 (array!58985) Bool)

(assert (=> start!82538 (array_inv!21902 _keys!1686)))

(declare-fun mapIsEmpty!34162 () Bool)

(assert (=> mapIsEmpty!34162 mapRes!34162))

(declare-fun b!961422 () Bool)

(declare-fun e!542154 () Bool)

(assert (=> b!961422 (= e!542154 tp_is_empty!21445)))

(declare-fun b!961423 () Bool)

(assert (=> b!961423 (= e!542156 (and e!542154 mapRes!34162))))

(declare-fun condMapEmpty!34162 () Bool)

(declare-fun mapDefault!34162 () ValueCell!10241)

