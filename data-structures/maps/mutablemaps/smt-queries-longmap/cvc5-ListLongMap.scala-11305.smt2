; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131766 () Bool)

(assert start!131766)

(declare-fun b!1542434 () Bool)

(declare-fun e!858183 () Bool)

(declare-fun tp_is_empty!37723 () Bool)

(assert (=> b!1542434 (= e!858183 tp_is_empty!37723)))

(declare-fun mapNonEmpty!58288 () Bool)

(declare-fun mapRes!58288 () Bool)

(declare-fun tp!110816 () Bool)

(declare-fun e!858185 () Bool)

(assert (=> mapNonEmpty!58288 (= mapRes!58288 (and tp!110816 e!858185))))

(declare-datatypes ((V!58741 0))(
  ( (V!58742 (val!18939 Int)) )
))
(declare-datatypes ((ValueCell!17951 0))(
  ( (ValueCellFull!17951 (v!21737 V!58741)) (EmptyCell!17951) )
))
(declare-fun mapRest!58288 () (Array (_ BitVec 32) ValueCell!17951))

(declare-datatypes ((array!102641 0))(
  ( (array!102642 (arr!49518 (Array (_ BitVec 32) ValueCell!17951)) (size!50069 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102641)

(declare-fun mapValue!58288 () ValueCell!17951)

(declare-fun mapKey!58288 () (_ BitVec 32))

(assert (=> mapNonEmpty!58288 (= (arr!49518 _values!470) (store mapRest!58288 mapKey!58288 mapValue!58288))))

(declare-fun b!1542435 () Bool)

(declare-fun res!1058566 () Bool)

(declare-fun e!858187 () Bool)

(assert (=> b!1542435 (=> (not res!1058566) (not e!858187))))

(declare-datatypes ((array!102643 0))(
  ( (array!102644 (arr!49519 (Array (_ BitVec 32) (_ BitVec 64))) (size!50070 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102643)

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102643 (_ BitVec 32)) Bool)

(assert (=> b!1542435 (= res!1058566 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun mapIsEmpty!58288 () Bool)

(assert (=> mapIsEmpty!58288 mapRes!58288))

(declare-fun b!1542437 () Bool)

(declare-fun res!1058567 () Bool)

(assert (=> b!1542437 (=> (not res!1058567) (not e!858187))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1542437 (= res!1058567 (and (= (size!50069 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50070 _keys!618) (size!50069 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1542438 () Bool)

(assert (=> b!1542438 (= e!858185 tp_is_empty!37723)))

(declare-fun b!1542439 () Bool)

(assert (=> b!1542439 (= e!858187 false)))

(declare-fun lt!665759 () Bool)

(declare-datatypes ((List!36033 0))(
  ( (Nil!36030) (Cons!36029 (h!37475 (_ BitVec 64)) (t!50734 List!36033)) )
))
(declare-fun arrayNoDuplicates!0 (array!102643 (_ BitVec 32) List!36033) Bool)

(assert (=> b!1542439 (= lt!665759 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36030))))

(declare-fun b!1542436 () Bool)

(declare-fun e!858186 () Bool)

(assert (=> b!1542436 (= e!858186 (and e!858183 mapRes!58288))))

(declare-fun condMapEmpty!58288 () Bool)

(declare-fun mapDefault!58288 () ValueCell!17951)

