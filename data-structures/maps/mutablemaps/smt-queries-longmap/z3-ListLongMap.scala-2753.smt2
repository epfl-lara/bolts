; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40380 () Bool)

(assert start!40380)

(declare-fun b!443405 () Bool)

(declare-fun res!262846 () Bool)

(declare-fun e!260881 () Bool)

(assert (=> b!443405 (=> (not res!262846) (not e!260881))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!443405 (= res!262846 (validKeyInArray!0 k0!794))))

(declare-fun b!443406 () Bool)

(declare-fun res!262851 () Bool)

(assert (=> b!443406 (=> (not res!262851) (not e!260881))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!443406 (= res!262851 (validMask!0 mask!1025))))

(declare-fun b!443407 () Bool)

(declare-fun res!262853 () Bool)

(assert (=> b!443407 (=> (not res!262853) (not e!260881))))

(declare-datatypes ((array!27293 0))(
  ( (array!27294 (arr!13091 (Array (_ BitVec 32) (_ BitVec 64))) (size!13443 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27293)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27293 (_ BitVec 32)) Bool)

(assert (=> b!443407 (= res!262853 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun res!262854 () Bool)

(assert (=> start!40380 (=> (not res!262854) (not e!260881))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40380 (= res!262854 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13443 _keys!709))))))

(assert (=> start!40380 e!260881))

(assert (=> start!40380 true))

(declare-datatypes ((V!16781 0))(
  ( (V!16782 (val!5923 Int)) )
))
(declare-datatypes ((ValueCell!5535 0))(
  ( (ValueCellFull!5535 (v!8170 V!16781)) (EmptyCell!5535) )
))
(declare-datatypes ((array!27295 0))(
  ( (array!27296 (arr!13092 (Array (_ BitVec 32) ValueCell!5535)) (size!13444 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27295)

(declare-fun e!260880 () Bool)

(declare-fun array_inv!9492 (array!27295) Bool)

(assert (=> start!40380 (and (array_inv!9492 _values!549) e!260880)))

(declare-fun array_inv!9493 (array!27293) Bool)

(assert (=> start!40380 (array_inv!9493 _keys!709)))

(declare-fun mapIsEmpty!19263 () Bool)

(declare-fun mapRes!19263 () Bool)

(assert (=> mapIsEmpty!19263 mapRes!19263))

(declare-fun b!443408 () Bool)

(declare-fun res!262855 () Bool)

(assert (=> b!443408 (=> (not res!262855) (not e!260881))))

(declare-datatypes ((List!7824 0))(
  ( (Nil!7821) (Cons!7820 (h!8676 (_ BitVec 64)) (t!13590 List!7824)) )
))
(declare-fun arrayNoDuplicates!0 (array!27293 (_ BitVec 32) List!7824) Bool)

(assert (=> b!443408 (= res!262855 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7821))))

(declare-fun mapNonEmpty!19263 () Bool)

(declare-fun tp!37245 () Bool)

(declare-fun e!260882 () Bool)

(assert (=> mapNonEmpty!19263 (= mapRes!19263 (and tp!37245 e!260882))))

(declare-fun mapValue!19263 () ValueCell!5535)

(declare-fun mapRest!19263 () (Array (_ BitVec 32) ValueCell!5535))

(declare-fun mapKey!19263 () (_ BitVec 32))

(assert (=> mapNonEmpty!19263 (= (arr!13092 _values!549) (store mapRest!19263 mapKey!19263 mapValue!19263))))

(declare-fun b!443409 () Bool)

(declare-fun res!262852 () Bool)

(assert (=> b!443409 (=> (not res!262852) (not e!260881))))

(declare-fun arrayContainsKey!0 (array!27293 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!443409 (= res!262852 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!443410 () Bool)

(declare-fun res!262849 () Bool)

(assert (=> b!443410 (=> (not res!262849) (not e!260881))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!443410 (= res!262849 (and (= (size!13444 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13443 _keys!709) (size!13444 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!443411 () Bool)

(declare-fun res!262848 () Bool)

(assert (=> b!443411 (=> (not res!262848) (not e!260881))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!443411 (= res!262848 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13443 _keys!709))))))

(declare-fun b!443412 () Bool)

(declare-fun e!260879 () Bool)

(assert (=> b!443412 (= e!260880 (and e!260879 mapRes!19263))))

(declare-fun condMapEmpty!19263 () Bool)

(declare-fun mapDefault!19263 () ValueCell!5535)

(assert (=> b!443412 (= condMapEmpty!19263 (= (arr!13092 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5535)) mapDefault!19263)))))

(declare-fun b!443413 () Bool)

(declare-fun tp_is_empty!11757 () Bool)

(assert (=> b!443413 (= e!260882 tp_is_empty!11757)))

(declare-fun b!443414 () Bool)

(declare-fun res!262850 () Bool)

(assert (=> b!443414 (=> (not res!262850) (not e!260881))))

(assert (=> b!443414 (= res!262850 (or (= (select (arr!13091 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13091 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!443415 () Bool)

(declare-fun e!260878 () Bool)

(assert (=> b!443415 (= e!260881 e!260878)))

(declare-fun res!262847 () Bool)

(assert (=> b!443415 (=> (not res!262847) (not e!260878))))

(declare-fun lt!203325 () array!27293)

(assert (=> b!443415 (= res!262847 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203325 mask!1025))))

(assert (=> b!443415 (= lt!203325 (array!27294 (store (arr!13091 _keys!709) i!563 k0!794) (size!13443 _keys!709)))))

(declare-fun b!443416 () Bool)

(assert (=> b!443416 (= e!260879 tp_is_empty!11757)))

(declare-fun b!443417 () Bool)

(assert (=> b!443417 (= e!260878 false)))

(declare-fun lt!203324 () Bool)

(assert (=> b!443417 (= lt!203324 (arrayNoDuplicates!0 lt!203325 #b00000000000000000000000000000000 Nil!7821))))

(assert (= (and start!40380 res!262854) b!443406))

(assert (= (and b!443406 res!262851) b!443410))

(assert (= (and b!443410 res!262849) b!443407))

(assert (= (and b!443407 res!262853) b!443408))

(assert (= (and b!443408 res!262855) b!443411))

(assert (= (and b!443411 res!262848) b!443405))

(assert (= (and b!443405 res!262846) b!443414))

(assert (= (and b!443414 res!262850) b!443409))

(assert (= (and b!443409 res!262852) b!443415))

(assert (= (and b!443415 res!262847) b!443417))

(assert (= (and b!443412 condMapEmpty!19263) mapIsEmpty!19263))

(assert (= (and b!443412 (not condMapEmpty!19263)) mapNonEmpty!19263))

(get-info :version)

(assert (= (and mapNonEmpty!19263 ((_ is ValueCellFull!5535) mapValue!19263)) b!443413))

(assert (= (and b!443412 ((_ is ValueCellFull!5535) mapDefault!19263)) b!443416))

(assert (= start!40380 b!443412))

(declare-fun m!429647 () Bool)

(assert (=> b!443408 m!429647))

(declare-fun m!429649 () Bool)

(assert (=> b!443414 m!429649))

(declare-fun m!429651 () Bool)

(assert (=> start!40380 m!429651))

(declare-fun m!429653 () Bool)

(assert (=> start!40380 m!429653))

(declare-fun m!429655 () Bool)

(assert (=> b!443417 m!429655))

(declare-fun m!429657 () Bool)

(assert (=> b!443406 m!429657))

(declare-fun m!429659 () Bool)

(assert (=> b!443405 m!429659))

(declare-fun m!429661 () Bool)

(assert (=> b!443415 m!429661))

(declare-fun m!429663 () Bool)

(assert (=> b!443415 m!429663))

(declare-fun m!429665 () Bool)

(assert (=> mapNonEmpty!19263 m!429665))

(declare-fun m!429667 () Bool)

(assert (=> b!443407 m!429667))

(declare-fun m!429669 () Bool)

(assert (=> b!443409 m!429669))

(check-sat (not b!443406) (not b!443408) (not start!40380) tp_is_empty!11757 (not b!443407) (not b!443405) (not b!443415) (not b!443417) (not mapNonEmpty!19263) (not b!443409))
(check-sat)
