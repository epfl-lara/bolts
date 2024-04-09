; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107364 () Bool)

(assert start!107364)

(declare-fun res!846221 () Bool)

(declare-fun e!725437 () Bool)

(assert (=> start!107364 (=> (not res!846221) (not e!725437))))

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107364 (= res!846221 (validMask!0 mask!1730))))

(assert (=> start!107364 e!725437))

(declare-datatypes ((V!49215 0))(
  ( (V!49216 (val!16583 Int)) )
))
(declare-datatypes ((ValueCell!15655 0))(
  ( (ValueCellFull!15655 (v!19218 V!49215)) (EmptyCell!15655) )
))
(declare-datatypes ((array!83225 0))(
  ( (array!83226 (arr!40145 (Array (_ BitVec 32) ValueCell!15655)) (size!40682 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83225)

(declare-fun e!725438 () Bool)

(declare-fun array_inv!30475 (array!83225) Bool)

(assert (=> start!107364 (and (array_inv!30475 _values!1134) e!725438)))

(assert (=> start!107364 true))

(declare-datatypes ((array!83227 0))(
  ( (array!83228 (arr!40146 (Array (_ BitVec 32) (_ BitVec 64))) (size!40683 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!83227)

(declare-fun array_inv!30476 (array!83227) Bool)

(assert (=> start!107364 (array_inv!30476 _keys!1364)))

(declare-fun b!1271894 () Bool)

(declare-fun from!1698 () (_ BitVec 32))

(assert (=> b!1271894 (= e!725437 (and (bvsge from!1698 #b00000000000000000000000000000000) (bvsle from!1698 (size!40683 _keys!1364)) (bvslt from!1698 (size!40683 _keys!1364)) (bvsge (bvadd #b00000000000000000000000000000001 from!1698) #b00000000000000000000000000000000) (bvsge (bvsub (size!40683 _keys!1364) (bvadd #b00000000000000000000000000000001 from!1698)) (bvsub (size!40683 _keys!1364) from!1698))))))

(declare-fun mapIsEmpty!51106 () Bool)

(declare-fun mapRes!51106 () Bool)

(assert (=> mapIsEmpty!51106 mapRes!51106))

(declare-fun b!1271895 () Bool)

(declare-fun e!725435 () Bool)

(declare-fun tp_is_empty!33017 () Bool)

(assert (=> b!1271895 (= e!725435 tp_is_empty!33017)))

(declare-fun mapNonEmpty!51106 () Bool)

(declare-fun tp!97448 () Bool)

(assert (=> mapNonEmpty!51106 (= mapRes!51106 (and tp!97448 e!725435))))

(declare-fun mapKey!51106 () (_ BitVec 32))

(declare-fun mapRest!51106 () (Array (_ BitVec 32) ValueCell!15655))

(declare-fun mapValue!51106 () ValueCell!15655)

(assert (=> mapNonEmpty!51106 (= (arr!40145 _values!1134) (store mapRest!51106 mapKey!51106 mapValue!51106))))

(declare-fun b!1271896 () Bool)

(declare-fun res!846219 () Bool)

(assert (=> b!1271896 (=> (not res!846219) (not e!725437))))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(assert (=> b!1271896 (= res!846219 (and (= (size!40682 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40683 _keys!1364) (size!40682 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun b!1271897 () Bool)

(declare-fun e!725436 () Bool)

(assert (=> b!1271897 (= e!725436 tp_is_empty!33017)))

(declare-fun b!1271898 () Bool)

(declare-fun res!846218 () Bool)

(assert (=> b!1271898 (=> (not res!846218) (not e!725437))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83227 (_ BitVec 32)) Bool)

(assert (=> b!1271898 (= res!846218 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1271899 () Bool)

(assert (=> b!1271899 (= e!725438 (and e!725436 mapRes!51106))))

(declare-fun condMapEmpty!51106 () Bool)

(declare-fun mapDefault!51106 () ValueCell!15655)

