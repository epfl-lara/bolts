; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81880 () Bool)

(assert start!81880)

(declare-fun b_free!18347 () Bool)

(declare-fun b_next!18347 () Bool)

(assert (=> start!81880 (= b_free!18347 (not b_next!18347))))

(declare-fun tp!63742 () Bool)

(declare-fun b_and!29851 () Bool)

(assert (=> start!81880 (= tp!63742 b_and!29851)))

(declare-fun res!639231 () Bool)

(declare-fun e!537738 () Bool)

(assert (=> start!81880 (=> (not res!639231) (not e!537738))))

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81880 (= res!639231 (validMask!0 mask!1823))))

(assert (=> start!81880 e!537738))

(assert (=> start!81880 true))

(declare-fun tp_is_empty!20891 () Bool)

(assert (=> start!81880 tp_is_empty!20891))

(declare-datatypes ((array!57907 0))(
  ( (array!57908 (arr!27829 (Array (_ BitVec 32) (_ BitVec 64))) (size!28309 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!57907)

(declare-fun array_inv!21547 (array!57907) Bool)

(assert (=> start!81880 (array_inv!21547 _keys!1441)))

(declare-datatypes ((V!32837 0))(
  ( (V!32838 (val!10496 Int)) )
))
(declare-datatypes ((ValueCell!9964 0))(
  ( (ValueCellFull!9964 (v!13051 V!32837)) (EmptyCell!9964) )
))
(declare-datatypes ((array!57909 0))(
  ( (array!57910 (arr!27830 (Array (_ BitVec 32) ValueCell!9964)) (size!28310 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!57909)

(declare-fun e!537740 () Bool)

(declare-fun array_inv!21548 (array!57909) Bool)

(assert (=> start!81880 (and (array_inv!21548 _values!1197) e!537740)))

(assert (=> start!81880 tp!63742))

(declare-fun b!954412 () Bool)

(declare-fun e!537741 () Bool)

(assert (=> b!954412 (= e!537741 tp_is_empty!20891)))

(declare-fun b!954413 () Bool)

(declare-fun res!639234 () Bool)

(assert (=> b!954413 (=> (not res!639234) (not e!537738))))

(declare-fun i!735 () (_ BitVec 32))

(assert (=> b!954413 (= res!639234 (and (bvsge i!735 #b00000000000000000000000000000000) (bvslt i!735 (size!28309 _keys!1441))))))

(declare-fun mapNonEmpty!33298 () Bool)

(declare-fun mapRes!33298 () Bool)

(declare-fun tp!63741 () Bool)

(declare-fun e!537737 () Bool)

(assert (=> mapNonEmpty!33298 (= mapRes!33298 (and tp!63741 e!537737))))

(declare-fun mapRest!33298 () (Array (_ BitVec 32) ValueCell!9964))

(declare-fun mapKey!33298 () (_ BitVec 32))

(declare-fun mapValue!33298 () ValueCell!9964)

(assert (=> mapNonEmpty!33298 (= (arr!27830 _values!1197) (store mapRest!33298 mapKey!33298 mapValue!33298))))

(declare-fun b!954414 () Bool)

(declare-fun res!639235 () Bool)

(assert (=> b!954414 (=> (not res!639235) (not e!537738))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(assert (=> b!954414 (= res!639235 (and (= (size!28310 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28309 _keys!1441) (size!28310 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun b!954415 () Bool)

(declare-fun res!639233 () Bool)

(assert (=> b!954415 (=> (not res!639233) (not e!537738))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!954415 (= res!639233 (validKeyInArray!0 (select (arr!27829 _keys!1441) i!735)))))

(declare-fun b!954416 () Bool)

(declare-fun res!639232 () Bool)

(assert (=> b!954416 (=> (not res!639232) (not e!537738))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57907 (_ BitVec 32)) Bool)

(assert (=> b!954416 (= res!639232 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun b!954417 () Bool)

(assert (=> b!954417 (= e!537740 (and e!537741 mapRes!33298))))

(declare-fun condMapEmpty!33298 () Bool)

(declare-fun mapDefault!33298 () ValueCell!9964)

