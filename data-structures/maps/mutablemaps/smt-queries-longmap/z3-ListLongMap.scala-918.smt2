; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20618 () Bool)

(assert start!20618)

(declare-fun b_free!5265 () Bool)

(declare-fun b_next!5265 () Bool)

(assert (=> start!20618 (= b_free!5265 (not b_next!5265))))

(declare-fun tp!18826 () Bool)

(declare-fun b_and!12029 () Bool)

(assert (=> start!20618 (= tp!18826 b_and!12029)))

(declare-fun b!205372 () Bool)

(declare-fun res!99239 () Bool)

(declare-fun e!134312 () Bool)

(assert (=> b!205372 (=> (not res!99239) (not e!134312))))

(declare-datatypes ((array!9454 0))(
  ( (array!9455 (arr!4477 (Array (_ BitVec 32) (_ BitVec 64))) (size!4802 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9454)

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!205372 (= res!99239 (= (select (arr!4477 _keys!825) i!601) k0!843))))

(declare-fun mapIsEmpty!8750 () Bool)

(declare-fun mapRes!8750 () Bool)

(assert (=> mapIsEmpty!8750 mapRes!8750))

(declare-fun b!205374 () Bool)

(declare-fun e!134314 () Bool)

(declare-fun tp_is_empty!5121 () Bool)

(assert (=> b!205374 (= e!134314 tp_is_empty!5121)))

(declare-fun b!205375 () Bool)

(declare-fun e!134315 () Bool)

(assert (=> b!205375 (= e!134315 (bvsle #b00000000000000000000000000000000 (size!4802 _keys!825)))))

(declare-datatypes ((V!6475 0))(
  ( (V!6476 (val!2605 Int)) )
))
(declare-datatypes ((tuple2!3948 0))(
  ( (tuple2!3949 (_1!1984 (_ BitVec 64)) (_2!1984 V!6475)) )
))
(declare-datatypes ((List!2869 0))(
  ( (Nil!2866) (Cons!2865 (h!3507 tuple2!3948) (t!7808 List!2869)) )
))
(declare-datatypes ((ListLongMap!2875 0))(
  ( (ListLongMap!2876 (toList!1453 List!2869)) )
))
(declare-fun lt!104577 () ListLongMap!2875)

(declare-fun lt!104578 () ListLongMap!2875)

(declare-fun lt!104576 () tuple2!3948)

(declare-fun +!470 (ListLongMap!2875 tuple2!3948) ListLongMap!2875)

(assert (=> b!205375 (= lt!104577 (+!470 lt!104578 lt!104576))))

(declare-datatypes ((Unit!6239 0))(
  ( (Unit!6240) )
))
(declare-fun lt!104575 () Unit!6239)

(declare-fun minValue!615 () V!6475)

(declare-fun lt!104570 () ListLongMap!2875)

(declare-fun v!520 () V!6475)

(declare-fun addCommutativeForDiffKeys!171 (ListLongMap!2875 (_ BitVec 64) V!6475 (_ BitVec 64) V!6475) Unit!6239)

(assert (=> b!205375 (= lt!104575 (addCommutativeForDiffKeys!171 lt!104570 k0!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!205376 () Bool)

(declare-fun res!99240 () Bool)

(assert (=> b!205376 (=> (not res!99240) (not e!134312))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9454 (_ BitVec 32)) Bool)

(assert (=> b!205376 (= res!99240 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!205377 () Bool)

(declare-fun res!99238 () Bool)

(assert (=> b!205377 (=> (not res!99238) (not e!134312))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!205377 (= res!99238 (validKeyInArray!0 k0!843))))

(declare-fun b!205378 () Bool)

(declare-fun e!134317 () Bool)

(assert (=> b!205378 (= e!134317 tp_is_empty!5121)))

(declare-fun b!205379 () Bool)

(declare-fun e!134311 () Bool)

(assert (=> b!205379 (= e!134311 (and e!134314 mapRes!8750))))

(declare-fun condMapEmpty!8750 () Bool)

(declare-datatypes ((ValueCell!2217 0))(
  ( (ValueCellFull!2217 (v!4571 V!6475)) (EmptyCell!2217) )
))
(declare-datatypes ((array!9456 0))(
  ( (array!9457 (arr!4478 (Array (_ BitVec 32) ValueCell!2217)) (size!4803 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9456)

(declare-fun mapDefault!8750 () ValueCell!2217)

(assert (=> b!205379 (= condMapEmpty!8750 (= (arr!4478 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2217)) mapDefault!8750)))))

(declare-fun b!205380 () Bool)

(declare-fun res!99237 () Bool)

(assert (=> b!205380 (=> (not res!99237) (not e!134312))))

(declare-datatypes ((List!2870 0))(
  ( (Nil!2867) (Cons!2866 (h!3508 (_ BitVec 64)) (t!7809 List!2870)) )
))
(declare-fun arrayNoDuplicates!0 (array!9454 (_ BitVec 32) List!2870) Bool)

(assert (=> b!205380 (= res!99237 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2867))))

(declare-fun b!205381 () Bool)

(declare-fun res!99234 () Bool)

(assert (=> b!205381 (=> (not res!99234) (not e!134312))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!205381 (= res!99234 (and (= (size!4803 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4802 _keys!825) (size!4803 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!8750 () Bool)

(declare-fun tp!18827 () Bool)

(assert (=> mapNonEmpty!8750 (= mapRes!8750 (and tp!18827 e!134317))))

(declare-fun mapKey!8750 () (_ BitVec 32))

(declare-fun mapValue!8750 () ValueCell!2217)

(declare-fun mapRest!8750 () (Array (_ BitVec 32) ValueCell!2217))

(assert (=> mapNonEmpty!8750 (= (arr!4478 _values!649) (store mapRest!8750 mapKey!8750 mapValue!8750))))

(declare-fun res!99235 () Bool)

(assert (=> start!20618 (=> (not res!99235) (not e!134312))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20618 (= res!99235 (validMask!0 mask!1149))))

(assert (=> start!20618 e!134312))

(declare-fun array_inv!2951 (array!9456) Bool)

(assert (=> start!20618 (and (array_inv!2951 _values!649) e!134311)))

(assert (=> start!20618 true))

(assert (=> start!20618 tp_is_empty!5121))

(declare-fun array_inv!2952 (array!9454) Bool)

(assert (=> start!20618 (array_inv!2952 _keys!825)))

(assert (=> start!20618 tp!18826))

(declare-fun b!205373 () Bool)

(declare-fun res!99241 () Bool)

(assert (=> b!205373 (=> (not res!99241) (not e!134312))))

(assert (=> b!205373 (= res!99241 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4802 _keys!825))))))

(declare-fun b!205382 () Bool)

(declare-fun e!134313 () Bool)

(assert (=> b!205382 (= e!134313 e!134315)))

(declare-fun res!99236 () Bool)

(assert (=> b!205382 (=> res!99236 e!134315)))

(assert (=> b!205382 (= res!99236 (= k0!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!104580 () ListLongMap!2875)

(assert (=> b!205382 (= lt!104580 lt!104578)))

(declare-fun lt!104572 () tuple2!3948)

(assert (=> b!205382 (= lt!104578 (+!470 lt!104570 lt!104572))))

(declare-fun lt!104571 () ListLongMap!2875)

(assert (=> b!205382 (= lt!104571 lt!104577)))

(declare-fun lt!104573 () ListLongMap!2875)

(assert (=> b!205382 (= lt!104577 (+!470 lt!104573 lt!104572))))

(declare-fun lt!104579 () ListLongMap!2875)

(assert (=> b!205382 (= lt!104571 (+!470 lt!104579 lt!104572))))

(assert (=> b!205382 (= lt!104572 (tuple2!3949 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!205383 () Bool)

(assert (=> b!205383 (= e!134312 (not e!134313))))

(declare-fun res!99233 () Bool)

(assert (=> b!205383 (=> res!99233 e!134313)))

(assert (=> b!205383 (= res!99233 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun zeroValue!615 () V!6475)

(declare-fun defaultEntry!657 () Int)

(declare-fun getCurrentListMap!1019 (array!9454 array!9456 (_ BitVec 32) (_ BitVec 32) V!6475 V!6475 (_ BitVec 32) Int) ListLongMap!2875)

(assert (=> b!205383 (= lt!104580 (getCurrentListMap!1019 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!104581 () array!9456)

(assert (=> b!205383 (= lt!104571 (getCurrentListMap!1019 _keys!825 lt!104581 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!205383 (and (= lt!104579 lt!104573) (= lt!104573 lt!104579))))

(assert (=> b!205383 (= lt!104573 (+!470 lt!104570 lt!104576))))

(assert (=> b!205383 (= lt!104576 (tuple2!3949 k0!843 v!520))))

(declare-fun lt!104574 () Unit!6239)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!132 (array!9454 array!9456 (_ BitVec 32) (_ BitVec 32) V!6475 V!6475 (_ BitVec 32) (_ BitVec 64) V!6475 (_ BitVec 32) Int) Unit!6239)

(assert (=> b!205383 (= lt!104574 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!132 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!390 (array!9454 array!9456 (_ BitVec 32) (_ BitVec 32) V!6475 V!6475 (_ BitVec 32) Int) ListLongMap!2875)

(assert (=> b!205383 (= lt!104579 (getCurrentListMapNoExtraKeys!390 _keys!825 lt!104581 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!205383 (= lt!104581 (array!9457 (store (arr!4478 _values!649) i!601 (ValueCellFull!2217 v!520)) (size!4803 _values!649)))))

(assert (=> b!205383 (= lt!104570 (getCurrentListMapNoExtraKeys!390 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (= (and start!20618 res!99235) b!205381))

(assert (= (and b!205381 res!99234) b!205376))

(assert (= (and b!205376 res!99240) b!205380))

(assert (= (and b!205380 res!99237) b!205373))

(assert (= (and b!205373 res!99241) b!205377))

(assert (= (and b!205377 res!99238) b!205372))

(assert (= (and b!205372 res!99239) b!205383))

(assert (= (and b!205383 (not res!99233)) b!205382))

(assert (= (and b!205382 (not res!99236)) b!205375))

(assert (= (and b!205379 condMapEmpty!8750) mapIsEmpty!8750))

(assert (= (and b!205379 (not condMapEmpty!8750)) mapNonEmpty!8750))

(get-info :version)

(assert (= (and mapNonEmpty!8750 ((_ is ValueCellFull!2217) mapValue!8750)) b!205378))

(assert (= (and b!205379 ((_ is ValueCellFull!2217) mapDefault!8750)) b!205374))

(assert (= start!20618 b!205379))

(declare-fun m!233017 () Bool)

(assert (=> b!205376 m!233017))

(declare-fun m!233019 () Bool)

(assert (=> b!205383 m!233019))

(declare-fun m!233021 () Bool)

(assert (=> b!205383 m!233021))

(declare-fun m!233023 () Bool)

(assert (=> b!205383 m!233023))

(declare-fun m!233025 () Bool)

(assert (=> b!205383 m!233025))

(declare-fun m!233027 () Bool)

(assert (=> b!205383 m!233027))

(declare-fun m!233029 () Bool)

(assert (=> b!205383 m!233029))

(declare-fun m!233031 () Bool)

(assert (=> b!205383 m!233031))

(declare-fun m!233033 () Bool)

(assert (=> b!205375 m!233033))

(declare-fun m!233035 () Bool)

(assert (=> b!205375 m!233035))

(declare-fun m!233037 () Bool)

(assert (=> b!205382 m!233037))

(declare-fun m!233039 () Bool)

(assert (=> b!205382 m!233039))

(declare-fun m!233041 () Bool)

(assert (=> b!205382 m!233041))

(declare-fun m!233043 () Bool)

(assert (=> start!20618 m!233043))

(declare-fun m!233045 () Bool)

(assert (=> start!20618 m!233045))

(declare-fun m!233047 () Bool)

(assert (=> start!20618 m!233047))

(declare-fun m!233049 () Bool)

(assert (=> mapNonEmpty!8750 m!233049))

(declare-fun m!233051 () Bool)

(assert (=> b!205377 m!233051))

(declare-fun m!233053 () Bool)

(assert (=> b!205380 m!233053))

(declare-fun m!233055 () Bool)

(assert (=> b!205372 m!233055))

(check-sat (not b!205377) b_and!12029 (not b!205382) (not b_next!5265) (not b!205375) tp_is_empty!5121 (not b!205376) (not start!20618) (not mapNonEmpty!8750) (not b!205383) (not b!205380))
(check-sat b_and!12029 (not b_next!5265))
