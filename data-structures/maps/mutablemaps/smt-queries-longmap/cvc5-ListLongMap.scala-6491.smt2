; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82814 () Bool)

(assert start!82814)

(declare-fun b!965506 () Bool)

(declare-fun res!646397 () Bool)

(declare-fun e!544306 () Bool)

(assert (=> b!965506 (=> (not res!646397) (not e!544306))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!33945 0))(
  ( (V!33946 (val!10911 Int)) )
))
(declare-datatypes ((ValueCell!10379 0))(
  ( (ValueCellFull!10379 (v!13469 V!33945)) (EmptyCell!10379) )
))
(declare-datatypes ((array!59507 0))(
  ( (array!59508 (arr!28618 (Array (_ BitVec 32) ValueCell!10379)) (size!29098 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59507)

(declare-datatypes ((array!59509 0))(
  ( (array!59510 (arr!28619 (Array (_ BitVec 32) (_ BitVec 64))) (size!29099 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59509)

(declare-fun mask!2110 () (_ BitVec 32))

(assert (=> b!965506 (= res!646397 (and (= (size!29098 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29099 _keys!1686) (size!29098 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!965507 () Bool)

(declare-fun res!646399 () Bool)

(assert (=> b!965507 (=> (not res!646399) (not e!544306))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59509 (_ BitVec 32)) Bool)

(assert (=> b!965507 (= res!646399 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!965508 () Bool)

(declare-fun res!646400 () Bool)

(assert (=> b!965508 (=> (not res!646400) (not e!544306))))

(declare-datatypes ((List!19989 0))(
  ( (Nil!19986) (Cons!19985 (h!21147 (_ BitVec 64)) (t!28360 List!19989)) )
))
(declare-fun arrayNoDuplicates!0 (array!59509 (_ BitVec 32) List!19989) Bool)

(assert (=> b!965508 (= res!646400 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19986))))

(declare-fun b!965509 () Bool)

(declare-fun e!544307 () Bool)

(declare-fun tp_is_empty!21721 () Bool)

(assert (=> b!965509 (= e!544307 tp_is_empty!21721)))

(declare-fun mapNonEmpty!34576 () Bool)

(declare-fun mapRes!34576 () Bool)

(declare-fun tp!65875 () Bool)

(declare-fun e!544305 () Bool)

(assert (=> mapNonEmpty!34576 (= mapRes!34576 (and tp!65875 e!544305))))

(declare-fun mapRest!34576 () (Array (_ BitVec 32) ValueCell!10379))

(declare-fun mapKey!34576 () (_ BitVec 32))

(declare-fun mapValue!34576 () ValueCell!10379)

(assert (=> mapNonEmpty!34576 (= (arr!28618 _values!1400) (store mapRest!34576 mapKey!34576 mapValue!34576))))

(declare-fun b!965510 () Bool)

(declare-fun e!544309 () Bool)

(assert (=> b!965510 (= e!544309 (and e!544307 mapRes!34576))))

(declare-fun condMapEmpty!34576 () Bool)

(declare-fun mapDefault!34576 () ValueCell!10379)

