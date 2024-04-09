; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20256 () Bool)

(assert start!20256)

(declare-fun b_free!4903 () Bool)

(declare-fun b_next!4903 () Bool)

(assert (=> start!20256 (= b_free!4903 (not b_next!4903))))

(declare-fun tp!17741 () Bool)

(declare-fun b_and!11667 () Bool)

(assert (=> start!20256 (= tp!17741 b_and!11667)))

(declare-fun b!199050 () Bool)

(declare-fun res!94545 () Bool)

(declare-fun e!130735 () Bool)

(assert (=> b!199050 (=> (not res!94545) (not e!130735))))

(declare-datatypes ((array!8758 0))(
  ( (array!8759 (arr!4129 (Array (_ BitVec 32) (_ BitVec 64))) (size!4454 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8758)

(declare-datatypes ((V!5993 0))(
  ( (V!5994 (val!2424 Int)) )
))
(declare-datatypes ((ValueCell!2036 0))(
  ( (ValueCellFull!2036 (v!4390 V!5993)) (EmptyCell!2036) )
))
(declare-datatypes ((array!8760 0))(
  ( (array!8761 (arr!4130 (Array (_ BitVec 32) ValueCell!2036)) (size!4455 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8760)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!199050 (= res!94545 (and (= (size!4455 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4454 _keys!825) (size!4455 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!199051 () Bool)

(declare-fun res!94542 () Bool)

(assert (=> b!199051 (=> (not res!94542) (not e!130735))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8758 (_ BitVec 32)) Bool)

(assert (=> b!199051 (= res!94542 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!199052 () Bool)

(declare-fun res!94546 () Bool)

(assert (=> b!199052 (=> (not res!94546) (not e!130735))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!199052 (= res!94546 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4454 _keys!825))))))

(declare-fun b!199053 () Bool)

(declare-fun res!94543 () Bool)

(assert (=> b!199053 (=> (not res!94543) (not e!130735))))

(declare-fun k!843 () (_ BitVec 64))

(assert (=> b!199053 (= res!94543 (= (select (arr!4129 _keys!825) i!601) k!843))))

(declare-fun b!199054 () Bool)

(declare-fun res!94541 () Bool)

(assert (=> b!199054 (=> (not res!94541) (not e!130735))))

(declare-datatypes ((List!2606 0))(
  ( (Nil!2603) (Cons!2602 (h!3244 (_ BitVec 64)) (t!7545 List!2606)) )
))
(declare-fun arrayNoDuplicates!0 (array!8758 (_ BitVec 32) List!2606) Bool)

(assert (=> b!199054 (= res!94541 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2603))))

(declare-fun b!199055 () Bool)

(declare-fun e!130734 () Bool)

(declare-fun tp_is_empty!4759 () Bool)

(assert (=> b!199055 (= e!130734 tp_is_empty!4759)))

(declare-fun b!199056 () Bool)

(assert (=> b!199056 (= e!130735 (not true))))

(declare-datatypes ((tuple2!3666 0))(
  ( (tuple2!3667 (_1!1843 (_ BitVec 64)) (_2!1843 V!5993)) )
))
(declare-datatypes ((List!2607 0))(
  ( (Nil!2604) (Cons!2603 (h!3245 tuple2!3666) (t!7546 List!2607)) )
))
(declare-datatypes ((ListLongMap!2593 0))(
  ( (ListLongMap!2594 (toList!1312 List!2607)) )
))
(declare-fun lt!98184 () ListLongMap!2593)

(declare-fun lt!98182 () ListLongMap!2593)

(assert (=> b!199056 (and (= lt!98184 lt!98182) (= lt!98182 lt!98184))))

(declare-fun lt!98185 () ListLongMap!2593)

(declare-fun v!520 () V!5993)

(declare-fun +!329 (ListLongMap!2593 tuple2!3666) ListLongMap!2593)

(assert (=> b!199056 (= lt!98182 (+!329 lt!98185 (tuple2!3667 k!843 v!520)))))

(declare-fun zeroValue!615 () V!5993)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!5993)

(declare-datatypes ((Unit!5967 0))(
  ( (Unit!5968) )
))
(declare-fun lt!98183 () Unit!5967)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!11 (array!8758 array!8760 (_ BitVec 32) (_ BitVec 32) V!5993 V!5993 (_ BitVec 32) (_ BitVec 64) V!5993 (_ BitVec 32) Int) Unit!5967)

(assert (=> b!199056 (= lt!98183 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!11 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!269 (array!8758 array!8760 (_ BitVec 32) (_ BitVec 32) V!5993 V!5993 (_ BitVec 32) Int) ListLongMap!2593)

(assert (=> b!199056 (= lt!98184 (getCurrentListMapNoExtraKeys!269 _keys!825 (array!8761 (store (arr!4130 _values!649) i!601 (ValueCellFull!2036 v!520)) (size!4455 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!199056 (= lt!98185 (getCurrentListMapNoExtraKeys!269 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun res!94544 () Bool)

(assert (=> start!20256 (=> (not res!94544) (not e!130735))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20256 (= res!94544 (validMask!0 mask!1149))))

(assert (=> start!20256 e!130735))

(declare-fun e!130731 () Bool)

(declare-fun array_inv!2697 (array!8760) Bool)

(assert (=> start!20256 (and (array_inv!2697 _values!649) e!130731)))

(assert (=> start!20256 true))

(assert (=> start!20256 tp_is_empty!4759))

(declare-fun array_inv!2698 (array!8758) Bool)

(assert (=> start!20256 (array_inv!2698 _keys!825)))

(assert (=> start!20256 tp!17741))

(declare-fun b!199057 () Bool)

(declare-fun e!130733 () Bool)

(assert (=> b!199057 (= e!130733 tp_is_empty!4759)))

(declare-fun b!199058 () Bool)

(declare-fun res!94540 () Bool)

(assert (=> b!199058 (=> (not res!94540) (not e!130735))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!199058 (= res!94540 (validKeyInArray!0 k!843))))

(declare-fun b!199059 () Bool)

(declare-fun mapRes!8207 () Bool)

(assert (=> b!199059 (= e!130731 (and e!130734 mapRes!8207))))

(declare-fun condMapEmpty!8207 () Bool)

(declare-fun mapDefault!8207 () ValueCell!2036)

