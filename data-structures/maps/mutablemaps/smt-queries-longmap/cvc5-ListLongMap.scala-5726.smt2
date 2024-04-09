; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74180 () Bool)

(assert start!74180)

(declare-fun b!872149 () Bool)

(declare-fun res!592889 () Bool)

(declare-fun e!485686 () Bool)

(assert (=> b!872149 (=> (not res!592889) (not e!485686))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!872149 (= res!592889 (validMask!0 mask!1196))))

(declare-fun b!872150 () Bool)

(declare-fun e!485688 () Bool)

(declare-fun tp_is_empty!17191 () Bool)

(assert (=> b!872150 (= e!485688 tp_is_empty!17191)))

(declare-fun b!872151 () Bool)

(declare-fun res!592890 () Bool)

(assert (=> b!872151 (=> (not res!592890) (not e!485686))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((array!50506 0))(
  ( (array!50507 (arr!24279 (Array (_ BitVec 32) (_ BitVec 64))) (size!24720 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50506)

(declare-datatypes ((V!27969 0))(
  ( (V!27970 (val!8643 Int)) )
))
(declare-datatypes ((ValueCell!8156 0))(
  ( (ValueCellFull!8156 (v!11064 V!27969)) (EmptyCell!8156) )
))
(declare-datatypes ((array!50508 0))(
  ( (array!50509 (arr!24280 (Array (_ BitVec 32) ValueCell!8156)) (size!24721 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50508)

(assert (=> b!872151 (= res!592890 (and (= (size!24721 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24720 _keys!868) (size!24721 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!872152 () Bool)

(declare-fun e!485684 () Bool)

(assert (=> b!872152 (= e!485684 tp_is_empty!17191)))

(declare-fun mapNonEmpty!27389 () Bool)

(declare-fun mapRes!27389 () Bool)

(declare-fun tp!52589 () Bool)

(assert (=> mapNonEmpty!27389 (= mapRes!27389 (and tp!52589 e!485688))))

(declare-fun mapKey!27389 () (_ BitVec 32))

(declare-fun mapRest!27389 () (Array (_ BitVec 32) ValueCell!8156))

(declare-fun mapValue!27389 () ValueCell!8156)

(assert (=> mapNonEmpty!27389 (= (arr!24280 _values!688) (store mapRest!27389 mapKey!27389 mapValue!27389))))

(declare-fun b!872153 () Bool)

(declare-fun res!592888 () Bool)

(assert (=> b!872153 (=> (not res!592888) (not e!485686))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50506 (_ BitVec 32)) Bool)

(assert (=> b!872153 (= res!592888 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!872154 () Bool)

(assert (=> b!872154 (= e!485686 false)))

(declare-fun lt!395547 () Bool)

(declare-datatypes ((List!17321 0))(
  ( (Nil!17318) (Cons!17317 (h!18448 (_ BitVec 64)) (t!24366 List!17321)) )
))
(declare-fun arrayNoDuplicates!0 (array!50506 (_ BitVec 32) List!17321) Bool)

(assert (=> b!872154 (= lt!395547 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17318))))

(declare-fun res!592887 () Bool)

(assert (=> start!74180 (=> (not res!592887) (not e!485686))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!74180 (= res!592887 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24720 _keys!868))))))

(assert (=> start!74180 e!485686))

(assert (=> start!74180 true))

(declare-fun array_inv!19140 (array!50506) Bool)

(assert (=> start!74180 (array_inv!19140 _keys!868)))

(declare-fun e!485687 () Bool)

(declare-fun array_inv!19141 (array!50508) Bool)

(assert (=> start!74180 (and (array_inv!19141 _values!688) e!485687)))

(declare-fun b!872155 () Bool)

(assert (=> b!872155 (= e!485687 (and e!485684 mapRes!27389))))

(declare-fun condMapEmpty!27389 () Bool)

(declare-fun mapDefault!27389 () ValueCell!8156)

