; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79210 () Bool)

(assert start!79210)

(declare-fun b_free!17395 () Bool)

(declare-fun b_next!17395 () Bool)

(assert (=> start!79210 (= b_free!17395 (not b_next!17395))))

(declare-fun tp!60626 () Bool)

(declare-fun b_and!28479 () Bool)

(assert (=> start!79210 (= tp!60626 b_and!28479)))

(declare-fun b!929383 () Bool)

(declare-fun res!625969 () Bool)

(declare-fun e!521929 () Bool)

(assert (=> b!929383 (=> (not res!625969) (not e!521929))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((array!55778 0))(
  ( (array!55779 (arr!26830 (Array (_ BitVec 32) (_ BitVec 64))) (size!27290 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55778)

(assert (=> b!929383 (= res!625969 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27290 _keys!1487))))))

(declare-fun b!929384 () Bool)

(declare-fun res!625968 () Bool)

(assert (=> b!929384 (=> (not res!625968) (not e!521929))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55778 (_ BitVec 32)) Bool)

(assert (=> b!929384 (= res!625968 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!929385 () Bool)

(declare-fun e!521926 () Bool)

(assert (=> b!929385 (= e!521929 e!521926)))

(declare-fun res!625963 () Bool)

(assert (=> b!929385 (=> (not res!625963) (not e!521926))))

(declare-datatypes ((V!31503 0))(
  ( (V!31504 (val!10002 Int)) )
))
(declare-datatypes ((tuple2!13182 0))(
  ( (tuple2!13183 (_1!6601 (_ BitVec 64)) (_2!6601 V!31503)) )
))
(declare-datatypes ((List!19003 0))(
  ( (Nil!19000) (Cons!18999 (h!20145 tuple2!13182) (t!27068 List!19003)) )
))
(declare-datatypes ((ListLongMap!11893 0))(
  ( (ListLongMap!11894 (toList!5962 List!19003)) )
))
(declare-fun lt!419027 () ListLongMap!11893)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!4978 (ListLongMap!11893 (_ BitVec 64)) Bool)

(assert (=> b!929385 (= res!625963 (contains!4978 lt!419027 k!1099))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9470 0))(
  ( (ValueCellFull!9470 (v!12520 V!31503)) (EmptyCell!9470) )
))
(declare-datatypes ((array!55780 0))(
  ( (array!55781 (arr!26831 (Array (_ BitVec 32) ValueCell!9470)) (size!27291 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55780)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31503)

(declare-fun minValue!1173 () V!31503)

(declare-fun getCurrentListMap!3172 (array!55778 array!55780 (_ BitVec 32) (_ BitVec 32) V!31503 V!31503 (_ BitVec 32) Int) ListLongMap!11893)

(assert (=> b!929385 (= lt!419027 (getCurrentListMap!3172 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun mapIsEmpty!31611 () Bool)

(declare-fun mapRes!31611 () Bool)

(assert (=> mapIsEmpty!31611 mapRes!31611))

(declare-fun b!929386 () Bool)

(declare-fun res!625966 () Bool)

(assert (=> b!929386 (=> (not res!625966) (not e!521926))))

(assert (=> b!929386 (= res!625966 (bvsle from!1844 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!31611 () Bool)

(declare-fun tp!60627 () Bool)

(declare-fun e!521930 () Bool)

(assert (=> mapNonEmpty!31611 (= mapRes!31611 (and tp!60627 e!521930))))

(declare-fun mapValue!31611 () ValueCell!9470)

(declare-fun mapKey!31611 () (_ BitVec 32))

(declare-fun mapRest!31611 () (Array (_ BitVec 32) ValueCell!9470))

(assert (=> mapNonEmpty!31611 (= (arr!26831 _values!1231) (store mapRest!31611 mapKey!31611 mapValue!31611))))

(declare-fun b!929387 () Bool)

(declare-fun res!625964 () Bool)

(assert (=> b!929387 (=> (not res!625964) (not e!521929))))

(declare-datatypes ((List!19004 0))(
  ( (Nil!19001) (Cons!19000 (h!20146 (_ BitVec 64)) (t!27069 List!19004)) )
))
(declare-fun arrayNoDuplicates!0 (array!55778 (_ BitVec 32) List!19004) Bool)

(assert (=> b!929387 (= res!625964 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19001))))

(declare-fun res!625965 () Bool)

(assert (=> start!79210 (=> (not res!625965) (not e!521929))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79210 (= res!625965 (validMask!0 mask!1881))))

(assert (=> start!79210 e!521929))

(assert (=> start!79210 true))

(declare-fun tp_is_empty!19903 () Bool)

(assert (=> start!79210 tp_is_empty!19903))

(declare-fun e!521927 () Bool)

(declare-fun array_inv!20874 (array!55780) Bool)

(assert (=> start!79210 (and (array_inv!20874 _values!1231) e!521927)))

(assert (=> start!79210 tp!60626))

(declare-fun array_inv!20875 (array!55778) Bool)

(assert (=> start!79210 (array_inv!20875 _keys!1487)))

(declare-fun b!929388 () Bool)

(declare-fun e!521928 () Bool)

(assert (=> b!929388 (= e!521927 (and e!521928 mapRes!31611))))

(declare-fun condMapEmpty!31611 () Bool)

(declare-fun mapDefault!31611 () ValueCell!9470)

