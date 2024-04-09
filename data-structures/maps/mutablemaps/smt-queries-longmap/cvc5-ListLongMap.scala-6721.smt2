; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84326 () Bool)

(assert start!84326)

(declare-fun mapNonEmpty!36680 () Bool)

(declare-fun mapRes!36680 () Bool)

(declare-fun tp!69536 () Bool)

(declare-fun e!555916 () Bool)

(assert (=> mapNonEmpty!36680 (= mapRes!36680 (and tp!69536 e!555916))))

(declare-fun mapKey!36680 () (_ BitVec 32))

(declare-datatypes ((V!35785 0))(
  ( (V!35786 (val!11601 Int)) )
))
(declare-datatypes ((ValueCell!11069 0))(
  ( (ValueCellFull!11069 (v!14163 V!35785)) (EmptyCell!11069) )
))
(declare-fun mapValue!36680 () ValueCell!11069)

(declare-datatypes ((array!62157 0))(
  ( (array!62158 (arr!29932 (Array (_ BitVec 32) ValueCell!11069)) (size!30412 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62157)

(declare-fun mapRest!36680 () (Array (_ BitVec 32) ValueCell!11069))

(assert (=> mapNonEmpty!36680 (= (arr!29932 _values!1278) (store mapRest!36680 mapKey!36680 mapValue!36680))))

(declare-fun b!986005 () Bool)

(declare-fun e!555918 () Bool)

(assert (=> b!986005 (= e!555918 false)))

(declare-fun lt!437392 () Bool)

(declare-datatypes ((array!62159 0))(
  ( (array!62160 (arr!29933 (Array (_ BitVec 32) (_ BitVec 64))) (size!30413 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62159)

(declare-datatypes ((List!20846 0))(
  ( (Nil!20843) (Cons!20842 (h!22004 (_ BitVec 64)) (t!29753 List!20846)) )
))
(declare-fun arrayNoDuplicates!0 (array!62159 (_ BitVec 32) List!20846) Bool)

(assert (=> b!986005 (= lt!437392 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20843))))

(declare-fun b!986006 () Bool)

(declare-fun res!659849 () Bool)

(assert (=> b!986006 (=> (not res!659849) (not e!555918))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62159 (_ BitVec 32)) Bool)

(assert (=> b!986006 (= res!659849 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!986007 () Bool)

(declare-fun res!659850 () Bool)

(assert (=> b!986007 (=> (not res!659850) (not e!555918))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!986007 (= res!659850 (and (= (size!30412 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30413 _keys!1544) (size!30412 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!986008 () Bool)

(declare-fun e!555917 () Bool)

(declare-fun tp_is_empty!23101 () Bool)

(assert (=> b!986008 (= e!555917 tp_is_empty!23101)))

(declare-fun res!659848 () Bool)

(assert (=> start!84326 (=> (not res!659848) (not e!555918))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84326 (= res!659848 (validMask!0 mask!1948))))

(assert (=> start!84326 e!555918))

(assert (=> start!84326 true))

(declare-fun e!555919 () Bool)

(declare-fun array_inv!22999 (array!62157) Bool)

(assert (=> start!84326 (and (array_inv!22999 _values!1278) e!555919)))

(declare-fun array_inv!23000 (array!62159) Bool)

(assert (=> start!84326 (array_inv!23000 _keys!1544)))

(declare-fun mapIsEmpty!36680 () Bool)

(assert (=> mapIsEmpty!36680 mapRes!36680))

(declare-fun b!986009 () Bool)

(assert (=> b!986009 (= e!555916 tp_is_empty!23101)))

(declare-fun b!986010 () Bool)

(assert (=> b!986010 (= e!555919 (and e!555917 mapRes!36680))))

(declare-fun condMapEmpty!36680 () Bool)

(declare-fun mapDefault!36680 () ValueCell!11069)

