; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81864 () Bool)

(assert start!81864)

(declare-fun b_free!18331 () Bool)

(declare-fun b_next!18331 () Bool)

(assert (=> start!81864 (= b_free!18331 (not b_next!18331))))

(declare-fun tp!63694 () Bool)

(declare-fun b_and!29835 () Bool)

(assert (=> start!81864 (= tp!63694 b_and!29835)))

(declare-fun b!954196 () Bool)

(declare-fun res!639087 () Bool)

(declare-fun e!537621 () Bool)

(assert (=> b!954196 (=> (not res!639087) (not e!537621))))

(declare-datatypes ((array!57875 0))(
  ( (array!57876 (arr!27813 (Array (_ BitVec 32) (_ BitVec 64))) (size!28293 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!57875)

(declare-fun i!735 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!954196 (= res!639087 (validKeyInArray!0 (select (arr!27813 _keys!1441) i!735)))))

(declare-fun b!954197 () Bool)

(declare-fun res!639086 () Bool)

(assert (=> b!954197 (=> (not res!639086) (not e!537621))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(declare-datatypes ((V!32817 0))(
  ( (V!32818 (val!10488 Int)) )
))
(declare-datatypes ((ValueCell!9956 0))(
  ( (ValueCellFull!9956 (v!13043 V!32817)) (EmptyCell!9956) )
))
(declare-datatypes ((array!57877 0))(
  ( (array!57878 (arr!27814 (Array (_ BitVec 32) ValueCell!9956)) (size!28294 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!57877)

(declare-fun mask!1823 () (_ BitVec 32))

(assert (=> b!954197 (= res!639086 (and (= (size!28294 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28293 _keys!1441) (size!28294 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!33274 () Bool)

(declare-fun mapRes!33274 () Bool)

(assert (=> mapIsEmpty!33274 mapRes!33274))

(declare-fun b!954199 () Bool)

(declare-fun e!537620 () Bool)

(declare-fun tp_is_empty!20875 () Bool)

(assert (=> b!954199 (= e!537620 tp_is_empty!20875)))

(declare-fun b!954200 () Bool)

(declare-fun res!639091 () Bool)

(assert (=> b!954200 (=> (not res!639091) (not e!537621))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57875 (_ BitVec 32)) Bool)

(assert (=> b!954200 (= res!639091 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun b!954201 () Bool)

(declare-fun e!537617 () Bool)

(declare-fun e!537619 () Bool)

(assert (=> b!954201 (= e!537617 (and e!537619 mapRes!33274))))

(declare-fun condMapEmpty!33274 () Bool)

(declare-fun mapDefault!33274 () ValueCell!9956)

