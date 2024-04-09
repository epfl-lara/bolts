; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83196 () Bool)

(assert start!83196)

(declare-fun b_free!19161 () Bool)

(declare-fun b_next!19161 () Bool)

(assert (=> start!83196 (= b_free!19161 (not b_next!19161))))

(declare-fun tp!66762 () Bool)

(declare-fun b_and!30667 () Bool)

(assert (=> start!83196 (= tp!66762 b_and!30667)))

(declare-fun mapNonEmpty!35098 () Bool)

(declare-fun mapRes!35098 () Bool)

(declare-fun tp!66763 () Bool)

(declare-fun e!546953 () Bool)

(assert (=> mapNonEmpty!35098 (= mapRes!35098 (and tp!66763 e!546953))))

(declare-datatypes ((V!34395 0))(
  ( (V!34396 (val!11080 Int)) )
))
(declare-datatypes ((ValueCell!10548 0))(
  ( (ValueCellFull!10548 (v!13639 V!34395)) (EmptyCell!10548) )
))
(declare-fun mapRest!35098 () (Array (_ BitVec 32) ValueCell!10548))

(declare-datatypes ((array!60161 0))(
  ( (array!60162 (arr!28940 (Array (_ BitVec 32) ValueCell!10548)) (size!29420 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60161)

(declare-fun mapValue!35098 () ValueCell!10548)

(declare-fun mapKey!35098 () (_ BitVec 32))

(assert (=> mapNonEmpty!35098 (= (arr!28940 _values!1425) (store mapRest!35098 mapKey!35098 mapValue!35098))))

(declare-fun b!970127 () Bool)

(declare-fun res!649433 () Bool)

(declare-fun e!546956 () Bool)

(assert (=> b!970127 (=> (not res!649433) (not e!546956))))

(declare-datatypes ((array!60163 0))(
  ( (array!60164 (arr!28941 (Array (_ BitVec 32) (_ BitVec 64))) (size!29421 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60163)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun i!822 () (_ BitVec 32))

(assert (=> b!970127 (= res!649433 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29421 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29421 _keys!1717))))))

(declare-fun res!649435 () Bool)

(assert (=> start!83196 (=> (not res!649435) (not e!546956))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83196 (= res!649435 (validMask!0 mask!2147))))

(assert (=> start!83196 e!546956))

(assert (=> start!83196 true))

(declare-fun e!546955 () Bool)

(declare-fun array_inv!22289 (array!60161) Bool)

(assert (=> start!83196 (and (array_inv!22289 _values!1425) e!546955)))

(declare-fun tp_is_empty!22059 () Bool)

(assert (=> start!83196 tp_is_empty!22059))

(assert (=> start!83196 tp!66762))

(declare-fun array_inv!22290 (array!60163) Bool)

(assert (=> start!83196 (array_inv!22290 _keys!1717)))

(declare-fun b!970128 () Bool)

(declare-fun res!649436 () Bool)

(assert (=> b!970128 (=> (not res!649436) (not e!546956))))

(declare-datatypes ((List!20186 0))(
  ( (Nil!20183) (Cons!20182 (h!21344 (_ BitVec 64)) (t!28557 List!20186)) )
))
(declare-fun arrayNoDuplicates!0 (array!60163 (_ BitVec 32) List!20186) Bool)

(assert (=> b!970128 (= res!649436 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20183))))

(declare-fun b!970129 () Bool)

(declare-fun res!649437 () Bool)

(assert (=> b!970129 (=> (not res!649437) (not e!546956))))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(assert (=> b!970129 (= res!649437 (and (= (size!29420 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29421 _keys!1717) (size!29420 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!970130 () Bool)

(assert (=> b!970130 (= e!546953 tp_is_empty!22059)))

(declare-fun b!970131 () Bool)

(declare-fun res!649438 () Bool)

(assert (=> b!970131 (=> (not res!649438) (not e!546956))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60163 (_ BitVec 32)) Bool)

(assert (=> b!970131 (= res!649438 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun mapIsEmpty!35098 () Bool)

(assert (=> mapIsEmpty!35098 mapRes!35098))

(declare-fun b!970132 () Bool)

(assert (=> b!970132 (= e!546956 false)))

(declare-fun zeroValue!1367 () V!34395)

(declare-fun lt!431665 () Bool)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34395)

(declare-datatypes ((tuple2!14294 0))(
  ( (tuple2!14295 (_1!7157 (_ BitVec 64)) (_2!7157 V!34395)) )
))
(declare-datatypes ((List!20187 0))(
  ( (Nil!20184) (Cons!20183 (h!21345 tuple2!14294) (t!28558 List!20187)) )
))
(declare-datatypes ((ListLongMap!13005 0))(
  ( (ListLongMap!13006 (toList!6518 List!20187)) )
))
(declare-fun contains!5573 (ListLongMap!13005 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3703 (array!60163 array!60161 (_ BitVec 32) (_ BitVec 32) V!34395 V!34395 (_ BitVec 32) Int) ListLongMap!13005)

(assert (=> b!970132 (= lt!431665 (contains!5573 (getCurrentListMap!3703 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!28941 _keys!1717) i!822)))))

(declare-fun b!970133 () Bool)

(declare-fun e!546954 () Bool)

(assert (=> b!970133 (= e!546954 tp_is_empty!22059)))

(declare-fun b!970134 () Bool)

(declare-fun res!649434 () Bool)

(assert (=> b!970134 (=> (not res!649434) (not e!546956))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!970134 (= res!649434 (validKeyInArray!0 (select (arr!28941 _keys!1717) i!822)))))

(declare-fun b!970135 () Bool)

(assert (=> b!970135 (= e!546955 (and e!546954 mapRes!35098))))

(declare-fun condMapEmpty!35098 () Bool)

(declare-fun mapDefault!35098 () ValueCell!10548)

(assert (=> b!970135 (= condMapEmpty!35098 (= (arr!28940 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10548)) mapDefault!35098)))))

(assert (= (and start!83196 res!649435) b!970129))

(assert (= (and b!970129 res!649437) b!970131))

(assert (= (and b!970131 res!649438) b!970128))

(assert (= (and b!970128 res!649436) b!970127))

(assert (= (and b!970127 res!649433) b!970134))

(assert (= (and b!970134 res!649434) b!970132))

(assert (= (and b!970135 condMapEmpty!35098) mapIsEmpty!35098))

(assert (= (and b!970135 (not condMapEmpty!35098)) mapNonEmpty!35098))

(get-info :version)

(assert (= (and mapNonEmpty!35098 ((_ is ValueCellFull!10548) mapValue!35098)) b!970130))

(assert (= (and b!970135 ((_ is ValueCellFull!10548) mapDefault!35098)) b!970133))

(assert (= start!83196 b!970135))

(declare-fun m!898003 () Bool)

(assert (=> b!970134 m!898003))

(assert (=> b!970134 m!898003))

(declare-fun m!898005 () Bool)

(assert (=> b!970134 m!898005))

(declare-fun m!898007 () Bool)

(assert (=> start!83196 m!898007))

(declare-fun m!898009 () Bool)

(assert (=> start!83196 m!898009))

(declare-fun m!898011 () Bool)

(assert (=> start!83196 m!898011))

(declare-fun m!898013 () Bool)

(assert (=> b!970132 m!898013))

(assert (=> b!970132 m!898003))

(assert (=> b!970132 m!898013))

(assert (=> b!970132 m!898003))

(declare-fun m!898015 () Bool)

(assert (=> b!970132 m!898015))

(declare-fun m!898017 () Bool)

(assert (=> mapNonEmpty!35098 m!898017))

(declare-fun m!898019 () Bool)

(assert (=> b!970131 m!898019))

(declare-fun m!898021 () Bool)

(assert (=> b!970128 m!898021))

(check-sat b_and!30667 (not b!970128) (not mapNonEmpty!35098) (not start!83196) (not b!970134) (not b!970131) (not b_next!19161) tp_is_empty!22059 (not b!970132))
(check-sat b_and!30667 (not b_next!19161))
