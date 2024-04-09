; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107270 () Bool)

(assert start!107270)

(declare-fun b!1271031 () Bool)

(declare-fun res!845780 () Bool)

(declare-fun e!724732 () Bool)

(assert (=> b!1271031 (=> (not res!845780) (not e!724732))))

(declare-datatypes ((array!83059 0))(
  ( (array!83060 (arr!40062 (Array (_ BitVec 32) (_ BitVec 64))) (size!40599 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!83059)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83059 (_ BitVec 32)) Bool)

(assert (=> b!1271031 (= res!845780 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun mapNonEmpty!50965 () Bool)

(declare-fun mapRes!50965 () Bool)

(declare-fun tp!97307 () Bool)

(declare-fun e!724729 () Bool)

(assert (=> mapNonEmpty!50965 (= mapRes!50965 (and tp!97307 e!724729))))

(declare-datatypes ((V!49091 0))(
  ( (V!49092 (val!16536 Int)) )
))
(declare-datatypes ((ValueCell!15608 0))(
  ( (ValueCellFull!15608 (v!19171 V!49091)) (EmptyCell!15608) )
))
(declare-datatypes ((array!83061 0))(
  ( (array!83062 (arr!40063 (Array (_ BitVec 32) ValueCell!15608)) (size!40600 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83061)

(declare-fun mapRest!50965 () (Array (_ BitVec 32) ValueCell!15608))

(declare-fun mapValue!50965 () ValueCell!15608)

(declare-fun mapKey!50965 () (_ BitVec 32))

(assert (=> mapNonEmpty!50965 (= (arr!40063 _values!1134) (store mapRest!50965 mapKey!50965 mapValue!50965))))

(declare-fun b!1271032 () Bool)

(assert (=> b!1271032 (= e!724732 false)))

(declare-fun lt!574757 () Bool)

(declare-datatypes ((List!28676 0))(
  ( (Nil!28673) (Cons!28672 (h!29881 (_ BitVec 64)) (t!42212 List!28676)) )
))
(declare-fun arrayNoDuplicates!0 (array!83059 (_ BitVec 32) List!28676) Bool)

(assert (=> b!1271032 (= lt!574757 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28673))))

(declare-fun b!1271033 () Bool)

(declare-fun e!724733 () Bool)

(declare-fun tp_is_empty!32923 () Bool)

(assert (=> b!1271033 (= e!724733 tp_is_empty!32923)))

(declare-fun res!845778 () Bool)

(assert (=> start!107270 (=> (not res!845778) (not e!724732))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107270 (= res!845778 (validMask!0 mask!1730))))

(assert (=> start!107270 e!724732))

(declare-fun e!724730 () Bool)

(declare-fun array_inv!30415 (array!83061) Bool)

(assert (=> start!107270 (and (array_inv!30415 _values!1134) e!724730)))

(assert (=> start!107270 true))

(declare-fun array_inv!30416 (array!83059) Bool)

(assert (=> start!107270 (array_inv!30416 _keys!1364)))

(declare-fun b!1271034 () Bool)

(assert (=> b!1271034 (= e!724730 (and e!724733 mapRes!50965))))

(declare-fun condMapEmpty!50965 () Bool)

(declare-fun mapDefault!50965 () ValueCell!15608)

