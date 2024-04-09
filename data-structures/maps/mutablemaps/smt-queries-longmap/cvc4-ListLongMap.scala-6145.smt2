; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79010 () Bool)

(assert start!79010)

(declare-fun b_free!17195 () Bool)

(declare-fun b_next!17195 () Bool)

(assert (=> start!79010 (= b_free!17195 (not b_next!17195))))

(declare-fun tp!60026 () Bool)

(declare-fun b_and!28145 () Bool)

(assert (=> start!79010 (= tp!60026 b_and!28145)))

(declare-fun b!924367 () Bool)

(declare-fun res!623176 () Bool)

(declare-fun e!518767 () Bool)

(assert (=> b!924367 (=> (not res!623176) (not e!518767))))

(declare-datatypes ((array!55390 0))(
  ( (array!55391 (arr!26636 (Array (_ BitVec 32) (_ BitVec 64))) (size!27096 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55390)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55390 (_ BitVec 32)) Bool)

(assert (=> b!924367 (= res!623176 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!924368 () Bool)

(declare-fun e!518762 () Bool)

(declare-fun e!518766 () Bool)

(assert (=> b!924368 (= e!518762 e!518766)))

(declare-fun res!623179 () Bool)

(assert (=> b!924368 (=> (not res!623179) (not e!518766))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!924368 (= res!623179 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27096 _keys!1487)))))

(declare-datatypes ((Unit!31218 0))(
  ( (Unit!31219) )
))
(declare-fun lt!415690 () Unit!31218)

(declare-fun e!518763 () Unit!31218)

(assert (=> b!924368 (= lt!415690 e!518763)))

(declare-fun c!96355 () Bool)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!924368 (= c!96355 (validKeyInArray!0 k!1099))))

(declare-fun b!924369 () Bool)

(declare-fun e!518764 () Bool)

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!924369 (= e!518764 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!924370 () Bool)

(declare-fun Unit!31220 () Unit!31218)

(assert (=> b!924370 (= e!518763 Unit!31220)))

(declare-fun b!924371 () Bool)

(declare-fun res!623183 () Bool)

(assert (=> b!924371 (=> (not res!623183) (not e!518767))))

(assert (=> b!924371 (= res!623183 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27096 _keys!1487))))))

(declare-fun b!924372 () Bool)

(declare-fun arrayContainsKey!0 (array!55390 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!924372 (= e!518764 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!924373 () Bool)

(declare-fun e!518771 () Bool)

(declare-fun tp_is_empty!19703 () Bool)

(assert (=> b!924373 (= e!518771 tp_is_empty!19703)))

(declare-fun mapIsEmpty!31311 () Bool)

(declare-fun mapRes!31311 () Bool)

(assert (=> mapIsEmpty!31311 mapRes!31311))

(declare-fun b!924374 () Bool)

(declare-fun res!623178 () Bool)

(assert (=> b!924374 (=> (not res!623178) (not e!518767))))

(declare-datatypes ((V!31235 0))(
  ( (V!31236 (val!9902 Int)) )
))
(declare-datatypes ((ValueCell!9370 0))(
  ( (ValueCellFull!9370 (v!12420 V!31235)) (EmptyCell!9370) )
))
(declare-datatypes ((array!55392 0))(
  ( (array!55393 (arr!26637 (Array (_ BitVec 32) ValueCell!9370)) (size!27097 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55392)

(assert (=> b!924374 (= res!623178 (and (= (size!27097 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27096 _keys!1487) (size!27097 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!924375 () Bool)

(declare-fun res!623177 () Bool)

(assert (=> b!924375 (=> (not res!623177) (not e!518767))))

(declare-datatypes ((List!18846 0))(
  ( (Nil!18843) (Cons!18842 (h!19988 (_ BitVec 64)) (t!26779 List!18846)) )
))
(declare-fun arrayNoDuplicates!0 (array!55390 (_ BitVec 32) List!18846) Bool)

(assert (=> b!924375 (= res!623177 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18843))))

(declare-fun b!924376 () Bool)

(declare-fun e!518769 () Bool)

(assert (=> b!924376 (= e!518769 (and e!518771 mapRes!31311))))

(declare-fun condMapEmpty!31311 () Bool)

(declare-fun mapDefault!31311 () ValueCell!9370)

