; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79126 () Bool)

(assert start!79126)

(declare-fun b_free!17311 () Bool)

(declare-fun b_next!17311 () Bool)

(assert (=> start!79126 (= b_free!17311 (not b_next!17311))))

(declare-fun tp!60375 () Bool)

(declare-fun b_and!28377 () Bool)

(assert (=> start!79126 (= tp!60375 b_and!28377)))

(declare-fun b!927907 () Bool)

(declare-fun e!521001 () Bool)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!927907 (= e!521001 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!31485 () Bool)

(declare-fun mapRes!31485 () Bool)

(declare-fun tp!60374 () Bool)

(declare-fun e!520998 () Bool)

(assert (=> mapNonEmpty!31485 (= mapRes!31485 (and tp!60374 e!520998))))

(declare-datatypes ((V!31391 0))(
  ( (V!31392 (val!9960 Int)) )
))
(declare-datatypes ((ValueCell!9428 0))(
  ( (ValueCellFull!9428 (v!12478 V!31391)) (EmptyCell!9428) )
))
(declare-fun mapValue!31485 () ValueCell!9428)

(declare-fun mapRest!31485 () (Array (_ BitVec 32) ValueCell!9428))

(declare-datatypes ((array!55616 0))(
  ( (array!55617 (arr!26749 (Array (_ BitVec 32) ValueCell!9428)) (size!27209 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55616)

(declare-fun mapKey!31485 () (_ BitVec 32))

(assert (=> mapNonEmpty!31485 (= (arr!26749 _values!1231) (store mapRest!31485 mapKey!31485 mapValue!31485))))

(declare-fun b!927908 () Bool)

(declare-datatypes ((Unit!31400 0))(
  ( (Unit!31401) )
))
(declare-fun e!521005 () Unit!31400)

(declare-fun e!521002 () Unit!31400)

(assert (=> b!927908 (= e!521005 e!521002)))

(declare-fun lt!418446 () (_ BitVec 64))

(declare-datatypes ((array!55618 0))(
  ( (array!55619 (arr!26750 (Array (_ BitVec 32) (_ BitVec 64))) (size!27210 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55618)

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!927908 (= lt!418446 (select (arr!26750 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!96878 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!927908 (= c!96878 (validKeyInArray!0 lt!418446))))

(declare-fun res!625038 () Bool)

(declare-fun e!521003 () Bool)

(assert (=> start!79126 (=> (not res!625038) (not e!521003))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79126 (= res!625038 (validMask!0 mask!1881))))

(assert (=> start!79126 e!521003))

(assert (=> start!79126 true))

(declare-fun tp_is_empty!19819 () Bool)

(assert (=> start!79126 tp_is_empty!19819))

(declare-fun e!521000 () Bool)

(declare-fun array_inv!20820 (array!55616) Bool)

(assert (=> start!79126 (and (array_inv!20820 _values!1231) e!521000)))

(assert (=> start!79126 tp!60375))

(declare-fun array_inv!20821 (array!55618) Bool)

(assert (=> start!79126 (array_inv!20821 _keys!1487)))

(declare-fun b!927909 () Bool)

(declare-fun e!520995 () Bool)

(declare-fun e!520999 () Bool)

(assert (=> b!927909 (= e!520995 e!520999)))

(declare-fun res!625035 () Bool)

(assert (=> b!927909 (=> (not res!625035) (not e!520999))))

(declare-datatypes ((tuple2!13116 0))(
  ( (tuple2!13117 (_1!6568 (_ BitVec 64)) (_2!6568 V!31391)) )
))
(declare-datatypes ((List!18941 0))(
  ( (Nil!18938) (Cons!18937 (h!20083 tuple2!13116) (t!26990 List!18941)) )
))
(declare-datatypes ((ListLongMap!11827 0))(
  ( (ListLongMap!11828 (toList!5929 List!18941)) )
))
(declare-fun lt!418443 () ListLongMap!11827)

(declare-fun contains!4948 (ListLongMap!11827 (_ BitVec 64)) Bool)

(assert (=> b!927909 (= res!625035 (contains!4948 lt!418443 k!1099))))

(declare-fun zeroValue!1173 () V!31391)

(declare-fun minValue!1173 () V!31391)

(declare-fun defaultEntry!1235 () Int)

(declare-fun getCurrentListMap!3142 (array!55618 array!55616 (_ BitVec 32) (_ BitVec 32) V!31391 V!31391 (_ BitVec 32) Int) ListLongMap!11827)

(assert (=> b!927909 (= lt!418443 (getCurrentListMap!3142 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!927910 () Bool)

(declare-fun e!521007 () Bool)

(assert (=> b!927910 (= e!521007 e!520995)))

(declare-fun res!625041 () Bool)

(assert (=> b!927910 (=> (not res!625041) (not e!520995))))

(assert (=> b!927910 (= res!625041 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27210 _keys!1487)))))

(declare-fun lt!418437 () Unit!31400)

(assert (=> b!927910 (= lt!418437 e!521005)))

(declare-fun c!96876 () Bool)

(assert (=> b!927910 (= c!96876 (validKeyInArray!0 k!1099))))

(declare-fun b!927911 () Bool)

(declare-fun e!520997 () Bool)

(assert (=> b!927911 (= e!520997 tp_is_empty!19819)))

(declare-fun b!927912 () Bool)

(declare-fun res!625042 () Bool)

(assert (=> b!927912 (=> (not res!625042) (not e!521003))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55618 (_ BitVec 32)) Bool)

(assert (=> b!927912 (= res!625042 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!927913 () Bool)

(declare-fun arrayContainsKey!0 (array!55618 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!927913 (= e!521001 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!927914 () Bool)

(declare-fun res!625043 () Bool)

(assert (=> b!927914 (=> (not res!625043) (not e!521003))))

(assert (=> b!927914 (= res!625043 (and (= (size!27209 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27210 _keys!1487) (size!27209 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun e!521004 () Bool)

(declare-fun v!791 () V!31391)

(declare-fun b!927915 () Bool)

(declare-fun lt!418444 () ListLongMap!11827)

(declare-fun apply!725 (ListLongMap!11827 (_ BitVec 64)) V!31391)

(assert (=> b!927915 (= e!521004 (= (apply!725 lt!418444 k!1099) v!791))))

(declare-fun b!927916 () Bool)

(declare-fun res!625040 () Bool)

(assert (=> b!927916 (=> (not res!625040) (not e!521003))))

(assert (=> b!927916 (= res!625040 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27210 _keys!1487))))))

(declare-fun b!927917 () Bool)

(declare-fun res!625034 () Bool)

(assert (=> b!927917 (=> (not res!625034) (not e!520999))))

(assert (=> b!927917 (= res!625034 (= (apply!725 lt!418443 k!1099) v!791))))

(declare-fun mapIsEmpty!31485 () Bool)

(assert (=> mapIsEmpty!31485 mapRes!31485))

(declare-fun b!927918 () Bool)

(assert (=> b!927918 (= e!521000 (and e!520997 mapRes!31485))))

(declare-fun condMapEmpty!31485 () Bool)

(declare-fun mapDefault!31485 () ValueCell!9428)

