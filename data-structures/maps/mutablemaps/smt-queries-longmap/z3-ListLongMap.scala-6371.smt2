; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81992 () Bool)

(assert start!81992)

(declare-fun b!955909 () Bool)

(declare-fun res!640224 () Bool)

(declare-fun e!538580 () Bool)

(assert (=> b!955909 (=> (not res!640224) (not e!538580))))

(declare-datatypes ((array!58127 0))(
  ( (array!58128 (arr!27939 (Array (_ BitVec 32) (_ BitVec 64))) (size!28419 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!58127)

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58127 (_ BitVec 32)) Bool)

(assert (=> b!955909 (= res!640224 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun b!955910 () Bool)

(assert (=> b!955910 (= e!538580 false)))

(declare-fun lt!430027 () Bool)

(declare-datatypes ((List!19610 0))(
  ( (Nil!19607) (Cons!19606 (h!20768 (_ BitVec 64)) (t!27979 List!19610)) )
))
(declare-fun arrayNoDuplicates!0 (array!58127 (_ BitVec 32) List!19610) Bool)

(assert (=> b!955910 (= lt!430027 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19607))))

(declare-fun b!955911 () Bool)

(declare-fun e!538578 () Bool)

(declare-fun tp_is_empty!21003 () Bool)

(assert (=> b!955911 (= e!538578 tp_is_empty!21003)))

(declare-fun b!955912 () Bool)

(declare-fun e!538577 () Bool)

(assert (=> b!955912 (= e!538577 tp_is_empty!21003)))

(declare-fun mapNonEmpty!33466 () Bool)

(declare-fun mapRes!33466 () Bool)

(declare-fun tp!64045 () Bool)

(assert (=> mapNonEmpty!33466 (= mapRes!33466 (and tp!64045 e!538577))))

(declare-datatypes ((V!32987 0))(
  ( (V!32988 (val!10552 Int)) )
))
(declare-datatypes ((ValueCell!10020 0))(
  ( (ValueCellFull!10020 (v!13107 V!32987)) (EmptyCell!10020) )
))
(declare-fun mapValue!33466 () ValueCell!10020)

(declare-fun mapKey!33466 () (_ BitVec 32))

(declare-datatypes ((array!58129 0))(
  ( (array!58130 (arr!27940 (Array (_ BitVec 32) ValueCell!10020)) (size!28420 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!58129)

(declare-fun mapRest!33466 () (Array (_ BitVec 32) ValueCell!10020))

(assert (=> mapNonEmpty!33466 (= (arr!27940 _values!1197) (store mapRest!33466 mapKey!33466 mapValue!33466))))

(declare-fun b!955913 () Bool)

(declare-fun e!538579 () Bool)

(assert (=> b!955913 (= e!538579 (and e!538578 mapRes!33466))))

(declare-fun condMapEmpty!33466 () Bool)

(declare-fun mapDefault!33466 () ValueCell!10020)

(assert (=> b!955913 (= condMapEmpty!33466 (= (arr!27940 _values!1197) ((as const (Array (_ BitVec 32) ValueCell!10020)) mapDefault!33466)))))

(declare-fun b!955914 () Bool)

(declare-fun res!640223 () Bool)

(assert (=> b!955914 (=> (not res!640223) (not e!538580))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(assert (=> b!955914 (= res!640223 (and (= (size!28420 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28419 _keys!1441) (size!28420 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun res!640225 () Bool)

(assert (=> start!81992 (=> (not res!640225) (not e!538580))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81992 (= res!640225 (validMask!0 mask!1823))))

(assert (=> start!81992 e!538580))

(assert (=> start!81992 true))

(declare-fun array_inv!21625 (array!58129) Bool)

(assert (=> start!81992 (and (array_inv!21625 _values!1197) e!538579)))

(declare-fun array_inv!21626 (array!58127) Bool)

(assert (=> start!81992 (array_inv!21626 _keys!1441)))

(declare-fun mapIsEmpty!33466 () Bool)

(assert (=> mapIsEmpty!33466 mapRes!33466))

(assert (= (and start!81992 res!640225) b!955914))

(assert (= (and b!955914 res!640223) b!955909))

(assert (= (and b!955909 res!640224) b!955910))

(assert (= (and b!955913 condMapEmpty!33466) mapIsEmpty!33466))

(assert (= (and b!955913 (not condMapEmpty!33466)) mapNonEmpty!33466))

(get-info :version)

(assert (= (and mapNonEmpty!33466 ((_ is ValueCellFull!10020) mapValue!33466)) b!955912))

(assert (= (and b!955913 ((_ is ValueCellFull!10020) mapDefault!33466)) b!955911))

(assert (= start!81992 b!955913))

(declare-fun m!887421 () Bool)

(assert (=> b!955909 m!887421))

(declare-fun m!887423 () Bool)

(assert (=> b!955910 m!887423))

(declare-fun m!887425 () Bool)

(assert (=> mapNonEmpty!33466 m!887425))

(declare-fun m!887427 () Bool)

(assert (=> start!81992 m!887427))

(declare-fun m!887429 () Bool)

(assert (=> start!81992 m!887429))

(declare-fun m!887431 () Bool)

(assert (=> start!81992 m!887431))

(check-sat (not b!955910) (not start!81992) (not b!955909) (not mapNonEmpty!33466) tp_is_empty!21003)
(check-sat)
