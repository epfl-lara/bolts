; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38480 () Bool)

(assert start!38480)

(declare-fun res!227896 () Bool)

(declare-fun e!240092 () Bool)

(assert (=> start!38480 (=> (not res!227896) (not e!240092))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!23665 0))(
  ( (array!23666 (arr!11279 (Array (_ BitVec 32) (_ BitVec 64))) (size!11631 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23665)

(assert (=> start!38480 (= res!227896 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!11631 _keys!709))))))

(assert (=> start!38480 e!240092))

(assert (=> start!38480 true))

(declare-datatypes ((V!14293 0))(
  ( (V!14294 (val!4990 Int)) )
))
(declare-datatypes ((ValueCell!4602 0))(
  ( (ValueCellFull!4602 (v!7233 V!14293)) (EmptyCell!4602) )
))
(declare-datatypes ((array!23667 0))(
  ( (array!23668 (arr!11280 (Array (_ BitVec 32) ValueCell!4602)) (size!11632 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23667)

(declare-fun e!240096 () Bool)

(declare-fun array_inv!8256 (array!23667) Bool)

(assert (=> start!38480 (and (array_inv!8256 _values!549) e!240096)))

(declare-fun array_inv!8257 (array!23665) Bool)

(assert (=> start!38480 (array_inv!8257 _keys!709)))

(declare-fun mapNonEmpty!16458 () Bool)

(declare-fun mapRes!16458 () Bool)

(declare-fun tp!32253 () Bool)

(declare-fun e!240097 () Bool)

(assert (=> mapNonEmpty!16458 (= mapRes!16458 (and tp!32253 e!240097))))

(declare-fun mapValue!16458 () ValueCell!4602)

(declare-fun mapKey!16458 () (_ BitVec 32))

(declare-fun mapRest!16458 () (Array (_ BitVec 32) ValueCell!4602))

(assert (=> mapNonEmpty!16458 (= (arr!11280 _values!549) (store mapRest!16458 mapKey!16458 mapValue!16458))))

(declare-fun b!396905 () Bool)

(declare-fun res!227899 () Bool)

(assert (=> b!396905 (=> (not res!227899) (not e!240092))))

(declare-datatypes ((List!6504 0))(
  ( (Nil!6501) (Cons!6500 (h!7356 (_ BitVec 64)) (t!11686 List!6504)) )
))
(declare-fun arrayNoDuplicates!0 (array!23665 (_ BitVec 32) List!6504) Bool)

(assert (=> b!396905 (= res!227899 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6501))))

(declare-fun b!396906 () Bool)

(declare-fun res!227895 () Bool)

(assert (=> b!396906 (=> (not res!227895) (not e!240092))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!23665 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!396906 (= res!227895 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!16458 () Bool)

(assert (=> mapIsEmpty!16458 mapRes!16458))

(declare-fun b!396907 () Bool)

(declare-fun res!227904 () Bool)

(assert (=> b!396907 (=> (not res!227904) (not e!240092))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!396907 (= res!227904 (or (= (select (arr!11279 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11279 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!396908 () Bool)

(declare-fun e!240093 () Bool)

(assert (=> b!396908 (= e!240096 (and e!240093 mapRes!16458))))

(declare-fun condMapEmpty!16458 () Bool)

(declare-fun mapDefault!16458 () ValueCell!4602)

(assert (=> b!396908 (= condMapEmpty!16458 (= (arr!11280 _values!549) ((as const (Array (_ BitVec 32) ValueCell!4602)) mapDefault!16458)))))

(declare-fun b!396909 () Bool)

(declare-fun e!240095 () Bool)

(assert (=> b!396909 (= e!240095 false)))

(declare-fun lt!187215 () Bool)

(declare-fun lt!187214 () array!23665)

(assert (=> b!396909 (= lt!187215 (arrayNoDuplicates!0 lt!187214 #b00000000000000000000000000000000 Nil!6501))))

(declare-fun b!396910 () Bool)

(declare-fun res!227900 () Bool)

(assert (=> b!396910 (=> (not res!227900) (not e!240092))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!396910 (= res!227900 (and (= (size!11632 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11631 _keys!709) (size!11632 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!396911 () Bool)

(declare-fun res!227898 () Bool)

(assert (=> b!396911 (=> (not res!227898) (not e!240092))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!396911 (= res!227898 (validKeyInArray!0 k0!794))))

(declare-fun b!396912 () Bool)

(declare-fun tp_is_empty!9891 () Bool)

(assert (=> b!396912 (= e!240097 tp_is_empty!9891)))

(declare-fun b!396913 () Bool)

(declare-fun res!227897 () Bool)

(assert (=> b!396913 (=> (not res!227897) (not e!240092))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23665 (_ BitVec 32)) Bool)

(assert (=> b!396913 (= res!227897 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!396914 () Bool)

(declare-fun res!227903 () Bool)

(assert (=> b!396914 (=> (not res!227903) (not e!240092))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!396914 (= res!227903 (validMask!0 mask!1025))))

(declare-fun b!396915 () Bool)

(declare-fun res!227901 () Bool)

(assert (=> b!396915 (=> (not res!227901) (not e!240092))))

(assert (=> b!396915 (= res!227901 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!11631 _keys!709))))))

(declare-fun b!396916 () Bool)

(assert (=> b!396916 (= e!240092 e!240095)))

(declare-fun res!227902 () Bool)

(assert (=> b!396916 (=> (not res!227902) (not e!240095))))

(assert (=> b!396916 (= res!227902 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!187214 mask!1025))))

(assert (=> b!396916 (= lt!187214 (array!23666 (store (arr!11279 _keys!709) i!563 k0!794) (size!11631 _keys!709)))))

(declare-fun b!396917 () Bool)

(assert (=> b!396917 (= e!240093 tp_is_empty!9891)))

(assert (= (and start!38480 res!227896) b!396914))

(assert (= (and b!396914 res!227903) b!396910))

(assert (= (and b!396910 res!227900) b!396913))

(assert (= (and b!396913 res!227897) b!396905))

(assert (= (and b!396905 res!227899) b!396915))

(assert (= (and b!396915 res!227901) b!396911))

(assert (= (and b!396911 res!227898) b!396907))

(assert (= (and b!396907 res!227904) b!396906))

(assert (= (and b!396906 res!227895) b!396916))

(assert (= (and b!396916 res!227902) b!396909))

(assert (= (and b!396908 condMapEmpty!16458) mapIsEmpty!16458))

(assert (= (and b!396908 (not condMapEmpty!16458)) mapNonEmpty!16458))

(get-info :version)

(assert (= (and mapNonEmpty!16458 ((_ is ValueCellFull!4602) mapValue!16458)) b!396912))

(assert (= (and b!396908 ((_ is ValueCellFull!4602) mapDefault!16458)) b!396917))

(assert (= start!38480 b!396908))

(declare-fun m!392325 () Bool)

(assert (=> b!396909 m!392325))

(declare-fun m!392327 () Bool)

(assert (=> b!396907 m!392327))

(declare-fun m!392329 () Bool)

(assert (=> mapNonEmpty!16458 m!392329))

(declare-fun m!392331 () Bool)

(assert (=> b!396911 m!392331))

(declare-fun m!392333 () Bool)

(assert (=> b!396913 m!392333))

(declare-fun m!392335 () Bool)

(assert (=> b!396914 m!392335))

(declare-fun m!392337 () Bool)

(assert (=> start!38480 m!392337))

(declare-fun m!392339 () Bool)

(assert (=> start!38480 m!392339))

(declare-fun m!392341 () Bool)

(assert (=> b!396916 m!392341))

(declare-fun m!392343 () Bool)

(assert (=> b!396916 m!392343))

(declare-fun m!392345 () Bool)

(assert (=> b!396905 m!392345))

(declare-fun m!392347 () Bool)

(assert (=> b!396906 m!392347))

(check-sat (not mapNonEmpty!16458) (not b!396916) (not b!396905) (not start!38480) (not b!396914) (not b!396911) (not b!396909) (not b!396906) tp_is_empty!9891 (not b!396913))
(check-sat)
