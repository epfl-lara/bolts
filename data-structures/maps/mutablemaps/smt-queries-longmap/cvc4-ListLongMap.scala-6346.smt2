; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81832 () Bool)

(assert start!81832)

(declare-fun mapIsEmpty!33241 () Bool)

(declare-fun mapRes!33241 () Bool)

(assert (=> mapIsEmpty!33241 mapRes!33241))

(declare-fun b!953892 () Bool)

(declare-fun res!638887 () Bool)

(declare-fun e!537440 () Bool)

(assert (=> b!953892 (=> (not res!638887) (not e!537440))))

(declare-datatypes ((List!19510 0))(
  ( (Nil!19507) (Cons!19506 (h!20668 (_ BitVec 64)) (t!27879 List!19510)) )
))
(declare-fun noDuplicate!1366 (List!19510) Bool)

(assert (=> b!953892 (= res!638887 (noDuplicate!1366 Nil!19507))))

(declare-fun b!953893 () Bool)

(declare-fun res!638890 () Bool)

(assert (=> b!953893 (=> (not res!638890) (not e!537440))))

(declare-datatypes ((array!57837 0))(
  ( (array!57838 (arr!27795 (Array (_ BitVec 32) (_ BitVec 64))) (size!28275 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!57837)

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57837 (_ BitVec 32)) Bool)

(assert (=> b!953893 (= res!638890 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun res!638886 () Bool)

(assert (=> start!81832 (=> (not res!638886) (not e!537440))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81832 (= res!638886 (validMask!0 mask!1823))))

(assert (=> start!81832 e!537440))

(assert (=> start!81832 true))

(declare-datatypes ((V!32789 0))(
  ( (V!32790 (val!10478 Int)) )
))
(declare-datatypes ((ValueCell!9946 0))(
  ( (ValueCellFull!9946 (v!13032 V!32789)) (EmptyCell!9946) )
))
(declare-datatypes ((array!57839 0))(
  ( (array!57840 (arr!27796 (Array (_ BitVec 32) ValueCell!9946)) (size!28276 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!57839)

(declare-fun e!537438 () Bool)

(declare-fun array_inv!21519 (array!57839) Bool)

(assert (=> start!81832 (and (array_inv!21519 _values!1197) e!537438)))

(declare-fun array_inv!21520 (array!57837) Bool)

(assert (=> start!81832 (array_inv!21520 _keys!1441)))

(declare-fun mapNonEmpty!33241 () Bool)

(declare-fun tp!63631 () Bool)

(declare-fun e!537442 () Bool)

(assert (=> mapNonEmpty!33241 (= mapRes!33241 (and tp!63631 e!537442))))

(declare-fun mapRest!33241 () (Array (_ BitVec 32) ValueCell!9946))

(declare-fun mapValue!33241 () ValueCell!9946)

(declare-fun mapKey!33241 () (_ BitVec 32))

(assert (=> mapNonEmpty!33241 (= (arr!27796 _values!1197) (store mapRest!33241 mapKey!33241 mapValue!33241))))

(declare-fun b!953894 () Bool)

(declare-fun e!537441 () Bool)

(declare-fun contains!5267 (List!19510 (_ BitVec 64)) Bool)

(assert (=> b!953894 (= e!537441 (contains!5267 Nil!19507 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!953895 () Bool)

(declare-fun res!638891 () Bool)

(assert (=> b!953895 (=> (not res!638891) (not e!537440))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(assert (=> b!953895 (= res!638891 (and (= (size!28276 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28275 _keys!1441) (size!28276 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun b!953896 () Bool)

(assert (=> b!953896 (= e!537440 e!537441)))

(declare-fun res!638888 () Bool)

(assert (=> b!953896 (=> res!638888 e!537441)))

(assert (=> b!953896 (= res!638888 (contains!5267 Nil!19507 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!953897 () Bool)

(declare-fun e!537437 () Bool)

(assert (=> b!953897 (= e!537438 (and e!537437 mapRes!33241))))

(declare-fun condMapEmpty!33241 () Bool)

(declare-fun mapDefault!33241 () ValueCell!9946)

