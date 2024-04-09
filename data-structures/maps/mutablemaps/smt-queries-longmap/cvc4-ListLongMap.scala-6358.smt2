; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81916 () Bool)

(assert start!81916)

(declare-fun b_free!18383 () Bool)

(declare-fun b_next!18383 () Bool)

(assert (=> start!81916 (= b_free!18383 (not b_next!18383))))

(declare-fun tp!63849 () Bool)

(declare-fun b_and!29887 () Bool)

(assert (=> start!81916 (= tp!63849 b_and!29887)))

(declare-fun b!954898 () Bool)

(declare-fun res!639556 () Bool)

(declare-fun e!538009 () Bool)

(assert (=> b!954898 (=> (not res!639556) (not e!538009))))

(declare-datatypes ((array!57979 0))(
  ( (array!57980 (arr!27865 (Array (_ BitVec 32) (_ BitVec 64))) (size!28345 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!57979)

(declare-fun i!735 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!954898 (= res!639556 (validKeyInArray!0 (select (arr!27865 _keys!1441) i!735)))))

(declare-fun mapIsEmpty!33352 () Bool)

(declare-fun mapRes!33352 () Bool)

(assert (=> mapIsEmpty!33352 mapRes!33352))

(declare-fun mapNonEmpty!33352 () Bool)

(declare-fun tp!63850 () Bool)

(declare-fun e!538010 () Bool)

(assert (=> mapNonEmpty!33352 (= mapRes!33352 (and tp!63850 e!538010))))

(declare-datatypes ((V!32885 0))(
  ( (V!32886 (val!10514 Int)) )
))
(declare-datatypes ((ValueCell!9982 0))(
  ( (ValueCellFull!9982 (v!13069 V!32885)) (EmptyCell!9982) )
))
(declare-fun mapValue!33352 () ValueCell!9982)

(declare-fun mapRest!33352 () (Array (_ BitVec 32) ValueCell!9982))

(declare-fun mapKey!33352 () (_ BitVec 32))

(declare-datatypes ((array!57981 0))(
  ( (array!57982 (arr!27866 (Array (_ BitVec 32) ValueCell!9982)) (size!28346 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!57981)

(assert (=> mapNonEmpty!33352 (= (arr!27866 _values!1197) (store mapRest!33352 mapKey!33352 mapValue!33352))))

(declare-fun b!954899 () Bool)

(declare-fun res!639558 () Bool)

(assert (=> b!954899 (=> (not res!639558) (not e!538009))))

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57979 (_ BitVec 32)) Bool)

(assert (=> b!954899 (= res!639558 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun b!954900 () Bool)

(declare-fun e!538011 () Bool)

(declare-fun e!538008 () Bool)

(assert (=> b!954900 (= e!538011 (and e!538008 mapRes!33352))))

(declare-fun condMapEmpty!33352 () Bool)

(declare-fun mapDefault!33352 () ValueCell!9982)

