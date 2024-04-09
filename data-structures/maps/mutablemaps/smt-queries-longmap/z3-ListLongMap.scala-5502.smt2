; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72826 () Bool)

(assert start!72826)

(declare-fun b!844694 () Bool)

(declare-fun e!471552 () Bool)

(declare-fun e!471553 () Bool)

(declare-fun mapRes!25373 () Bool)

(assert (=> b!844694 (= e!471552 (and e!471553 mapRes!25373))))

(declare-fun condMapEmpty!25373 () Bool)

(declare-datatypes ((V!26179 0))(
  ( (V!26180 (val!7972 Int)) )
))
(declare-datatypes ((ValueCell!7485 0))(
  ( (ValueCellFull!7485 (v!10393 V!26179)) (EmptyCell!7485) )
))
(declare-datatypes ((array!47912 0))(
  ( (array!47913 (arr!22983 (Array (_ BitVec 32) ValueCell!7485)) (size!23424 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47912)

(declare-fun mapDefault!25373 () ValueCell!7485)

(assert (=> b!844694 (= condMapEmpty!25373 (= (arr!22983 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7485)) mapDefault!25373)))))

(declare-fun b!844695 () Bool)

(declare-fun res!573978 () Bool)

(declare-fun e!471555 () Bool)

(assert (=> b!844695 (=> (not res!573978) (not e!471555))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!844695 (= res!573978 (validMask!0 mask!1196))))

(declare-fun b!844696 () Bool)

(declare-fun res!573975 () Bool)

(assert (=> b!844696 (=> (not res!573975) (not e!471555))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((array!47914 0))(
  ( (array!47915 (arr!22984 (Array (_ BitVec 32) (_ BitVec 64))) (size!23425 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47914)

(assert (=> b!844696 (= res!573975 (and (= (size!23424 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23425 _keys!868) (size!23424 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!25373 () Bool)

(declare-fun tp!48692 () Bool)

(declare-fun e!471551 () Bool)

(assert (=> mapNonEmpty!25373 (= mapRes!25373 (and tp!48692 e!471551))))

(declare-fun mapRest!25373 () (Array (_ BitVec 32) ValueCell!7485))

(declare-fun mapValue!25373 () ValueCell!7485)

(declare-fun mapKey!25373 () (_ BitVec 32))

(assert (=> mapNonEmpty!25373 (= (arr!22983 _values!688) (store mapRest!25373 mapKey!25373 mapValue!25373))))

(declare-fun res!573977 () Bool)

(assert (=> start!72826 (=> (not res!573977) (not e!471555))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72826 (= res!573977 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23425 _keys!868))))))

(assert (=> start!72826 e!471555))

(assert (=> start!72826 true))

(declare-fun array_inv!18254 (array!47914) Bool)

(assert (=> start!72826 (array_inv!18254 _keys!868)))

(declare-fun array_inv!18255 (array!47912) Bool)

(assert (=> start!72826 (and (array_inv!18255 _values!688) e!471552)))

(declare-fun b!844697 () Bool)

(declare-fun tp_is_empty!15849 () Bool)

(assert (=> b!844697 (= e!471551 tp_is_empty!15849)))

(declare-fun b!844698 () Bool)

(assert (=> b!844698 (= e!471555 false)))

(declare-fun lt!381285 () Bool)

(declare-datatypes ((List!16352 0))(
  ( (Nil!16349) (Cons!16348 (h!17479 (_ BitVec 64)) (t!22731 List!16352)) )
))
(declare-fun arrayNoDuplicates!0 (array!47914 (_ BitVec 32) List!16352) Bool)

(assert (=> b!844698 (= lt!381285 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16349))))

(declare-fun b!844699 () Bool)

(declare-fun res!573976 () Bool)

(assert (=> b!844699 (=> (not res!573976) (not e!471555))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47914 (_ BitVec 32)) Bool)

(assert (=> b!844699 (= res!573976 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapIsEmpty!25373 () Bool)

(assert (=> mapIsEmpty!25373 mapRes!25373))

(declare-fun b!844700 () Bool)

(assert (=> b!844700 (= e!471553 tp_is_empty!15849)))

(assert (= (and start!72826 res!573977) b!844695))

(assert (= (and b!844695 res!573978) b!844696))

(assert (= (and b!844696 res!573975) b!844699))

(assert (= (and b!844699 res!573976) b!844698))

(assert (= (and b!844694 condMapEmpty!25373) mapIsEmpty!25373))

(assert (= (and b!844694 (not condMapEmpty!25373)) mapNonEmpty!25373))

(get-info :version)

(assert (= (and mapNonEmpty!25373 ((_ is ValueCellFull!7485) mapValue!25373)) b!844697))

(assert (= (and b!844694 ((_ is ValueCellFull!7485) mapDefault!25373)) b!844700))

(assert (= start!72826 b!844694))

(declare-fun m!786881 () Bool)

(assert (=> b!844695 m!786881))

(declare-fun m!786883 () Bool)

(assert (=> b!844699 m!786883))

(declare-fun m!786885 () Bool)

(assert (=> mapNonEmpty!25373 m!786885))

(declare-fun m!786887 () Bool)

(assert (=> b!844698 m!786887))

(declare-fun m!786889 () Bool)

(assert (=> start!72826 m!786889))

(declare-fun m!786891 () Bool)

(assert (=> start!72826 m!786891))

(check-sat (not mapNonEmpty!25373) (not b!844698) tp_is_empty!15849 (not b!844695) (not b!844699) (not start!72826))
(check-sat)
