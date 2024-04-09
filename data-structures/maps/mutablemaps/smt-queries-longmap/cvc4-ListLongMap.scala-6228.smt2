; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79672 () Bool)

(assert start!79672)

(declare-fun b_free!17693 () Bool)

(declare-fun b_next!17693 () Bool)

(assert (=> start!79672 (= b_free!17693 (not b_next!17693))))

(declare-fun tp!61535 () Bool)

(declare-fun b_and!28995 () Bool)

(assert (=> start!79672 (= tp!61535 b_and!28995)))

(declare-fun b!936139 () Bool)

(declare-fun res!630485 () Bool)

(declare-fun e!525670 () Bool)

(assert (=> b!936139 (=> (not res!630485) (not e!525670))))

(declare-datatypes ((array!56366 0))(
  ( (array!56367 (arr!27119 (Array (_ BitVec 32) (_ BitVec 64))) (size!27579 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56366)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!31899 0))(
  ( (V!31900 (val!10151 Int)) )
))
(declare-datatypes ((ValueCell!9619 0))(
  ( (ValueCellFull!9619 (v!12676 V!31899)) (EmptyCell!9619) )
))
(declare-datatypes ((array!56368 0))(
  ( (array!56369 (arr!27120 (Array (_ BitVec 32) ValueCell!9619)) (size!27580 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56368)

(assert (=> b!936139 (= res!630485 (and (= (size!27580 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27579 _keys!1487) (size!27580 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!936140 () Bool)

(declare-fun e!525672 () Bool)

(declare-fun e!525674 () Bool)

(assert (=> b!936140 (= e!525672 e!525674)))

(declare-fun res!630481 () Bool)

(assert (=> b!936140 (=> (not res!630481) (not e!525674))))

(declare-fun lt!422056 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!936140 (= res!630481 (validKeyInArray!0 lt!422056))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!936140 (= lt!422056 (select (arr!27119 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!936141 () Bool)

(declare-fun res!630486 () Bool)

(assert (=> b!936141 (=> (not res!630486) (not e!525670))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56366 (_ BitVec 32)) Bool)

(assert (=> b!936141 (= res!630486 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!936142 () Bool)

(declare-fun e!525669 () Bool)

(declare-fun tp_is_empty!20201 () Bool)

(assert (=> b!936142 (= e!525669 tp_is_empty!20201)))

(declare-fun mapNonEmpty!32073 () Bool)

(declare-fun mapRes!32073 () Bool)

(declare-fun tp!61536 () Bool)

(declare-fun e!525667 () Bool)

(assert (=> mapNonEmpty!32073 (= mapRes!32073 (and tp!61536 e!525667))))

(declare-fun mapValue!32073 () ValueCell!9619)

(declare-fun mapKey!32073 () (_ BitVec 32))

(declare-fun mapRest!32073 () (Array (_ BitVec 32) ValueCell!9619))

(assert (=> mapNonEmpty!32073 (= (arr!27120 _values!1231) (store mapRest!32073 mapKey!32073 mapValue!32073))))

(declare-fun mapIsEmpty!32073 () Bool)

(assert (=> mapIsEmpty!32073 mapRes!32073))

(declare-fun b!936143 () Bool)

(declare-fun e!525673 () Bool)

(assert (=> b!936143 (= e!525673 (and e!525669 mapRes!32073))))

(declare-fun condMapEmpty!32073 () Bool)

(declare-fun mapDefault!32073 () ValueCell!9619)

