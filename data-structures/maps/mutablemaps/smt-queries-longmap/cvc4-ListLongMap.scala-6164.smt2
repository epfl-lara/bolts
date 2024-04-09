; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79124 () Bool)

(assert start!79124)

(declare-fun b_free!17309 () Bool)

(declare-fun b_next!17309 () Bool)

(assert (=> start!79124 (= b_free!17309 (not b_next!17309))))

(declare-fun tp!60369 () Bool)

(declare-fun b_and!28373 () Bool)

(assert (=> start!79124 (= tp!60369 b_and!28373)))

(declare-fun b!927845 () Bool)

(declare-fun e!520962 () Bool)

(declare-fun e!520967 () Bool)

(assert (=> b!927845 (= e!520962 e!520967)))

(declare-fun res!625005 () Bool)

(assert (=> b!927845 (=> (not res!625005) (not e!520967))))

(declare-datatypes ((V!31387 0))(
  ( (V!31388 (val!9959 Int)) )
))
(declare-datatypes ((tuple2!13114 0))(
  ( (tuple2!13115 (_1!6567 (_ BitVec 64)) (_2!6567 V!31387)) )
))
(declare-datatypes ((List!18940 0))(
  ( (Nil!18937) (Cons!18936 (h!20082 tuple2!13114) (t!26987 List!18940)) )
))
(declare-datatypes ((ListLongMap!11825 0))(
  ( (ListLongMap!11826 (toList!5928 List!18940)) )
))
(declare-fun lt!418393 () ListLongMap!11825)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!4947 (ListLongMap!11825 (_ BitVec 64)) Bool)

(assert (=> b!927845 (= res!625005 (contains!4947 lt!418393 k!1099))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9427 0))(
  ( (ValueCellFull!9427 (v!12477 V!31387)) (EmptyCell!9427) )
))
(declare-datatypes ((array!55612 0))(
  ( (array!55613 (arr!26747 (Array (_ BitVec 32) ValueCell!9427)) (size!27207 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55612)

(declare-fun defaultEntry!1235 () Int)

(declare-datatypes ((array!55614 0))(
  ( (array!55615 (arr!26748 (Array (_ BitVec 32) (_ BitVec 64))) (size!27208 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55614)

(declare-fun zeroValue!1173 () V!31387)

(declare-fun minValue!1173 () V!31387)

(declare-fun getCurrentListMap!3141 (array!55614 array!55612 (_ BitVec 32) (_ BitVec 32) V!31387 V!31387 (_ BitVec 32) Int) ListLongMap!11825)

(assert (=> b!927845 (= lt!418393 (getCurrentListMap!3141 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!927846 () Bool)

(declare-datatypes ((Unit!31397 0))(
  ( (Unit!31398) )
))
(declare-fun e!520963 () Unit!31397)

(declare-fun Unit!31399 () Unit!31397)

(assert (=> b!927846 (= e!520963 Unit!31399)))

(declare-fun b!927847 () Bool)

(declare-fun res!625001 () Bool)

(assert (=> b!927847 (=> (not res!625001) (not e!520962))))

(assert (=> b!927847 (= res!625001 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27208 _keys!1487))))))

(declare-fun b!927848 () Bool)

(declare-fun e!520958 () Bool)

(declare-fun tp_is_empty!19817 () Bool)

(assert (=> b!927848 (= e!520958 tp_is_empty!19817)))

(declare-fun mapNonEmpty!31482 () Bool)

(declare-fun mapRes!31482 () Bool)

(declare-fun tp!60368 () Bool)

(assert (=> mapNonEmpty!31482 (= mapRes!31482 (and tp!60368 e!520958))))

(declare-fun mapKey!31482 () (_ BitVec 32))

(declare-fun mapValue!31482 () ValueCell!9427)

(declare-fun mapRest!31482 () (Array (_ BitVec 32) ValueCell!9427))

(assert (=> mapNonEmpty!31482 (= (arr!26747 _values!1231) (store mapRest!31482 mapKey!31482 mapValue!31482))))

(declare-fun e!520959 () Bool)

(declare-fun b!927849 () Bool)

(declare-fun arrayContainsKey!0 (array!55614 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!927849 (= e!520959 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!927850 () Bool)

(declare-fun e!520965 () Bool)

(assert (=> b!927850 (= e!520967 e!520965)))

(declare-fun res!625002 () Bool)

(assert (=> b!927850 (=> (not res!625002) (not e!520965))))

(declare-fun v!791 () V!31387)

(declare-fun lt!418399 () V!31387)

(assert (=> b!927850 (= res!625002 (and (= lt!418399 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(declare-fun apply!724 (ListLongMap!11825 (_ BitVec 64)) V!31387)

(assert (=> b!927850 (= lt!418399 (apply!724 lt!418393 k!1099))))

(declare-fun res!625008 () Bool)

(assert (=> start!79124 (=> (not res!625008) (not e!520962))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79124 (= res!625008 (validMask!0 mask!1881))))

(assert (=> start!79124 e!520962))

(assert (=> start!79124 true))

(assert (=> start!79124 tp_is_empty!19817))

(declare-fun e!520968 () Bool)

(declare-fun array_inv!20818 (array!55612) Bool)

(assert (=> start!79124 (and (array_inv!20818 _values!1231) e!520968)))

(assert (=> start!79124 tp!60369))

(declare-fun array_inv!20819 (array!55614) Bool)

(assert (=> start!79124 (array_inv!20819 _keys!1487)))

(declare-fun b!927851 () Bool)

(declare-fun e!520956 () Bool)

(assert (=> b!927851 (= e!520965 e!520956)))

(declare-fun res!625010 () Bool)

(assert (=> b!927851 (=> (not res!625010) (not e!520956))))

(assert (=> b!927851 (= res!625010 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27208 _keys!1487)))))

(declare-fun lt!418387 () Unit!31397)

(declare-fun e!520966 () Unit!31397)

(assert (=> b!927851 (= lt!418387 e!520966)))

(declare-fun c!96867 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!927851 (= c!96867 (validKeyInArray!0 k!1099))))

(declare-fun mapIsEmpty!31482 () Bool)

(assert (=> mapIsEmpty!31482 mapRes!31482))

(declare-fun b!927852 () Bool)

(declare-fun res!625000 () Bool)

(declare-fun e!520957 () Bool)

(assert (=> b!927852 (=> (not res!625000) (not e!520957))))

(declare-fun lt!418396 () ListLongMap!11825)

(assert (=> b!927852 (= res!625000 (= (apply!724 lt!418396 k!1099) v!791))))

(declare-fun b!927853 () Bool)

(declare-fun res!625007 () Bool)

(assert (=> b!927853 (=> (not res!625007) (not e!520962))))

(assert (=> b!927853 (= res!625007 (and (= (size!27207 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27208 _keys!1487) (size!27207 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!927854 () Bool)

(declare-fun e!520961 () Bool)

(assert (=> b!927854 (= e!520968 (and e!520961 mapRes!31482))))

(declare-fun condMapEmpty!31482 () Bool)

(declare-fun mapDefault!31482 () ValueCell!9427)

