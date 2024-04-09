; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4112 () Bool)

(assert start!4112)

(declare-fun b_free!1019 () Bool)

(declare-fun b_next!1019 () Bool)

(assert (=> start!4112 (= b_free!1019 (not b_next!1019))))

(declare-fun tp!4476 () Bool)

(declare-fun b_and!1831 () Bool)

(assert (=> start!4112 (= tp!4476 b_and!1831)))

(declare-fun b!30704 () Bool)

(declare-fun res!18513 () Bool)

(declare-fun e!19672 () Bool)

(assert (=> b!30704 (=> (not res!18513) (not e!19672))))

(declare-datatypes ((array!1959 0))(
  ( (array!1960 (arr!933 (Array (_ BitVec 32) (_ BitVec 64))) (size!1034 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1959)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1959 (_ BitVec 32)) Bool)

(assert (=> b!30704 (= res!18513 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun mapNonEmpty!1588 () Bool)

(declare-fun mapRes!1588 () Bool)

(declare-fun tp!4477 () Bool)

(declare-fun e!19671 () Bool)

(assert (=> mapNonEmpty!1588 (= mapRes!1588 (and tp!4477 e!19671))))

(declare-datatypes ((V!1655 0))(
  ( (V!1656 (val!713 Int)) )
))
(declare-datatypes ((ValueCell!487 0))(
  ( (ValueCellFull!487 (v!1802 V!1655)) (EmptyCell!487) )
))
(declare-fun mapRest!1588 () (Array (_ BitVec 32) ValueCell!487))

(declare-datatypes ((array!1961 0))(
  ( (array!1962 (arr!934 (Array (_ BitVec 32) ValueCell!487)) (size!1035 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1961)

(declare-fun mapValue!1588 () ValueCell!487)

(declare-fun mapKey!1588 () (_ BitVec 32))

(assert (=> mapNonEmpty!1588 (= (arr!934 _values!1501) (store mapRest!1588 mapKey!1588 mapValue!1588))))

(declare-fun b!30705 () Bool)

(declare-fun res!18508 () Bool)

(assert (=> b!30705 (=> (not res!18508) (not e!19672))))

(declare-datatypes ((List!765 0))(
  ( (Nil!762) (Cons!761 (h!1328 (_ BitVec 64)) (t!3460 List!765)) )
))
(declare-fun arrayNoDuplicates!0 (array!1959 (_ BitVec 32) List!765) Bool)

(assert (=> b!30705 (= res!18508 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!762))))

(declare-fun b!30706 () Bool)

(declare-fun e!19669 () Bool)

(declare-fun e!19668 () Bool)

(assert (=> b!30706 (= e!19669 (and e!19668 mapRes!1588))))

(declare-fun condMapEmpty!1588 () Bool)

(declare-fun mapDefault!1588 () ValueCell!487)

