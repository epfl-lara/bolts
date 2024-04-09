; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84328 () Bool)

(assert start!84328)

(declare-fun mapIsEmpty!36683 () Bool)

(declare-fun mapRes!36683 () Bool)

(assert (=> mapIsEmpty!36683 mapRes!36683))

(declare-fun b!986023 () Bool)

(declare-fun res!659858 () Bool)

(declare-fun e!555932 () Bool)

(assert (=> b!986023 (=> (not res!659858) (not e!555932))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((V!35787 0))(
  ( (V!35788 (val!11602 Int)) )
))
(declare-datatypes ((ValueCell!11070 0))(
  ( (ValueCellFull!11070 (v!14164 V!35787)) (EmptyCell!11070) )
))
(declare-datatypes ((array!62161 0))(
  ( (array!62162 (arr!29934 (Array (_ BitVec 32) ValueCell!11070)) (size!30414 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62161)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((array!62163 0))(
  ( (array!62164 (arr!29935 (Array (_ BitVec 32) (_ BitVec 64))) (size!30415 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62163)

(assert (=> b!986023 (= res!659858 (and (= (size!30414 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30415 _keys!1544) (size!30414 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!36683 () Bool)

(declare-fun tp!69539 () Bool)

(declare-fun e!555934 () Bool)

(assert (=> mapNonEmpty!36683 (= mapRes!36683 (and tp!69539 e!555934))))

(declare-fun mapValue!36683 () ValueCell!11070)

(declare-fun mapKey!36683 () (_ BitVec 32))

(declare-fun mapRest!36683 () (Array (_ BitVec 32) ValueCell!11070))

(assert (=> mapNonEmpty!36683 (= (arr!29934 _values!1278) (store mapRest!36683 mapKey!36683 mapValue!36683))))

(declare-fun b!986024 () Bool)

(declare-fun res!659857 () Bool)

(assert (=> b!986024 (=> (not res!659857) (not e!555932))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62163 (_ BitVec 32)) Bool)

(assert (=> b!986024 (= res!659857 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!986025 () Bool)

(assert (=> b!986025 (= e!555932 false)))

(declare-fun lt!437395 () Bool)

(declare-datatypes ((List!20847 0))(
  ( (Nil!20844) (Cons!20843 (h!22005 (_ BitVec 64)) (t!29754 List!20847)) )
))
(declare-fun arrayNoDuplicates!0 (array!62163 (_ BitVec 32) List!20847) Bool)

(assert (=> b!986025 (= lt!437395 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20844))))

(declare-fun b!986026 () Bool)

(declare-fun tp_is_empty!23103 () Bool)

(assert (=> b!986026 (= e!555934 tp_is_empty!23103)))

(declare-fun b!986027 () Bool)

(declare-fun e!555931 () Bool)

(declare-fun e!555935 () Bool)

(assert (=> b!986027 (= e!555931 (and e!555935 mapRes!36683))))

(declare-fun condMapEmpty!36683 () Bool)

(declare-fun mapDefault!36683 () ValueCell!11070)

(assert (=> b!986027 (= condMapEmpty!36683 (= (arr!29934 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!11070)) mapDefault!36683)))))

(declare-fun b!986028 () Bool)

(assert (=> b!986028 (= e!555935 tp_is_empty!23103)))

(declare-fun res!659859 () Bool)

(assert (=> start!84328 (=> (not res!659859) (not e!555932))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84328 (= res!659859 (validMask!0 mask!1948))))

(assert (=> start!84328 e!555932))

(assert (=> start!84328 true))

(declare-fun array_inv!23001 (array!62161) Bool)

(assert (=> start!84328 (and (array_inv!23001 _values!1278) e!555931)))

(declare-fun array_inv!23002 (array!62163) Bool)

(assert (=> start!84328 (array_inv!23002 _keys!1544)))

(assert (= (and start!84328 res!659859) b!986023))

(assert (= (and b!986023 res!659858) b!986024))

(assert (= (and b!986024 res!659857) b!986025))

(assert (= (and b!986027 condMapEmpty!36683) mapIsEmpty!36683))

(assert (= (and b!986027 (not condMapEmpty!36683)) mapNonEmpty!36683))

(get-info :version)

(assert (= (and mapNonEmpty!36683 ((_ is ValueCellFull!11070) mapValue!36683)) b!986026))

(assert (= (and b!986027 ((_ is ValueCellFull!11070) mapDefault!36683)) b!986028))

(assert (= start!84328 b!986027))

(declare-fun m!913055 () Bool)

(assert (=> mapNonEmpty!36683 m!913055))

(declare-fun m!913057 () Bool)

(assert (=> b!986024 m!913057))

(declare-fun m!913059 () Bool)

(assert (=> b!986025 m!913059))

(declare-fun m!913061 () Bool)

(assert (=> start!84328 m!913061))

(declare-fun m!913063 () Bool)

(assert (=> start!84328 m!913063))

(declare-fun m!913065 () Bool)

(assert (=> start!84328 m!913065))

(check-sat (not start!84328) (not b!986024) tp_is_empty!23103 (not b!986025) (not mapNonEmpty!36683))
(check-sat)
