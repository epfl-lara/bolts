; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79660 () Bool)

(assert start!79660)

(declare-fun b_free!17681 () Bool)

(declare-fun b_next!17681 () Bool)

(assert (=> start!79660 (= b_free!17681 (not b_next!17681))))

(declare-fun tp!61500 () Bool)

(declare-fun b_and!28971 () Bool)

(assert (=> start!79660 (= tp!61500 b_and!28971)))

(declare-fun b!935857 () Bool)

(declare-fun res!630300 () Bool)

(declare-fun e!525524 () Bool)

(assert (=> b!935857 (=> (not res!630300) (not e!525524))))

(declare-datatypes ((array!56342 0))(
  ( (array!56343 (arr!27107 (Array (_ BitVec 32) (_ BitVec 64))) (size!27567 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56342)

(declare-datatypes ((List!19229 0))(
  ( (Nil!19226) (Cons!19225 (h!20371 (_ BitVec 64)) (t!27462 List!19229)) )
))
(declare-fun arrayNoDuplicates!0 (array!56342 (_ BitVec 32) List!19229) Bool)

(assert (=> b!935857 (= res!630300 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19226))))

(declare-fun mapNonEmpty!32055 () Bool)

(declare-fun mapRes!32055 () Bool)

(declare-fun tp!61499 () Bool)

(declare-fun e!525526 () Bool)

(assert (=> mapNonEmpty!32055 (= mapRes!32055 (and tp!61499 e!525526))))

(declare-datatypes ((V!31883 0))(
  ( (V!31884 (val!10145 Int)) )
))
(declare-datatypes ((ValueCell!9613 0))(
  ( (ValueCellFull!9613 (v!12670 V!31883)) (EmptyCell!9613) )
))
(declare-fun mapValue!32055 () ValueCell!9613)

(declare-datatypes ((array!56344 0))(
  ( (array!56345 (arr!27108 (Array (_ BitVec 32) ValueCell!9613)) (size!27568 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56344)

(declare-fun mapKey!32055 () (_ BitVec 32))

(declare-fun mapRest!32055 () (Array (_ BitVec 32) ValueCell!9613))

(assert (=> mapNonEmpty!32055 (= (arr!27108 _values!1231) (store mapRest!32055 mapKey!32055 mapValue!32055))))

(declare-fun b!935858 () Bool)

(declare-fun res!630305 () Bool)

(declare-fun e!525530 () Bool)

(assert (=> b!935858 (=> (not res!630305) (not e!525530))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!935858 (= res!630305 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!935859 () Bool)

(declare-fun res!630306 () Bool)

(assert (=> b!935859 (=> (not res!630306) (not e!525530))))

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!935859 (= res!630306 (validKeyInArray!0 k!1099))))

(declare-fun b!935860 () Bool)

(declare-fun tp_is_empty!20189 () Bool)

(assert (=> b!935860 (= e!525526 tp_is_empty!20189)))

(declare-fun b!935861 () Bool)

(declare-fun e!525525 () Bool)

(assert (=> b!935861 (= e!525525 tp_is_empty!20189)))

(declare-fun b!935862 () Bool)

(declare-fun e!525527 () Bool)

(declare-fun arrayContainsKey!0 (array!56342 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!935862 (= e!525527 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun mapIsEmpty!32055 () Bool)

(assert (=> mapIsEmpty!32055 mapRes!32055))

(declare-fun b!935863 () Bool)

(declare-fun res!630299 () Bool)

(assert (=> b!935863 (=> (not res!630299) (not e!525524))))

(assert (=> b!935863 (= res!630299 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27567 _keys!1487))))))

(declare-fun res!630302 () Bool)

(assert (=> start!79660 (=> (not res!630302) (not e!525524))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79660 (= res!630302 (validMask!0 mask!1881))))

(assert (=> start!79660 e!525524))

(assert (=> start!79660 true))

(assert (=> start!79660 tp_is_empty!20189))

(declare-fun e!525529 () Bool)

(declare-fun array_inv!21048 (array!56344) Bool)

(assert (=> start!79660 (and (array_inv!21048 _values!1231) e!525529)))

(assert (=> start!79660 tp!61500))

(declare-fun array_inv!21049 (array!56342) Bool)

(assert (=> start!79660 (array_inv!21049 _keys!1487)))

(declare-fun b!935864 () Bool)

(declare-fun res!630303 () Bool)

(assert (=> b!935864 (=> (not res!630303) (not e!525524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56342 (_ BitVec 32)) Bool)

(assert (=> b!935864 (= res!630303 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!935865 () Bool)

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!935865 (= e!525527 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!935866 () Bool)

(declare-fun res!630304 () Bool)

(assert (=> b!935866 (=> (not res!630304) (not e!525524))))

(assert (=> b!935866 (= res!630304 (and (= (size!27568 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27567 _keys!1487) (size!27568 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!935867 () Bool)

(assert (=> b!935867 (= e!525529 (and e!525525 mapRes!32055))))

(declare-fun condMapEmpty!32055 () Bool)

(declare-fun mapDefault!32055 () ValueCell!9613)

